#------------------------------------------------------------------------------
# File:         TagInfoXML.pm
#
# Description:  Read/write tag information XML database
#
# Revisions:    2009/01/28 - P. Harvey Created
#------------------------------------------------------------------------------

package Image::ExifTool::TagInfoXML;

use strict;
require Exporter;

use vars qw($VERSION @ISA);
use Image::ExifTool qw(:Utils :Vars);
use Image::ExifTool::XMP;

$VERSION = '1.02';
@ISA = qw(Exporter);

sub LoadLangModules($);
sub WriteLangModule($$);
sub NumbersFirst;

my $caseInsensitive;

#------------------------------------------------------------------------------
# Utility to print tag information database as an XML list
# Inputs: 0) output file name (undef to send to console),
#         1) group name (may be undef),
#         2) flag for short output (no descriptions)
# Returns: true on success
sub Write(;$$$)
{
    local $_;
    my ($file, $group, $short) = @_;
    my @groups = split ':', $group if $group;
    my $exifTool = new Image::ExifTool;
    my ($fp, $tableName, %langInfo, @langs, $defaultLang);

    Image::ExifTool::LoadAllTables();   # first load all our tables
    unless ($short) {
        LoadLangModules(\%langInfo);        # load all existing Lang modules
        @langs = sort keys %langInfo;
        $defaultLang = $Image::ExifTool::defaultLang;
    }
    if (defined $file) {
        open PTIFILE, ">$file" or return 0;
        $fp = \*PTIFILE;
    } else {
        $fp = \*STDOUT;
    }
    print $fp "<?xml version='1.0' encoding='UTF-8'?>\n";
    print $fp "<taginfo>\n\n";

    # loop through all tables and save tag names to %allTags hash
    foreach $tableName (sort keys %allTables) {
        my $table = GetTagTable($tableName);
        my $grps = $$table{GROUPS};
        my ($tagID, $didTag);
        # sort in same order as tag name documentation
        $caseInsensitive = ($tableName =~ /::XMP::/);
        my @keys = sort NumbersFirst TagTableKeys($table);
        # get list of languages defining elements in this table
        my $isBinary = ($$table{PROCESS_PROC} and
                        $$table{PROCESS_PROC} eq \&Image::ExifTool::ProcessBinaryData);
        # loop throug all tag ID's in this table
        foreach $tagID (@keys) {
            my @infoArray = GetTagInfoList($table, $tagID);
            my $xmlID = Image::ExifTool::XMP::FullEscapeXML($tagID);
            # get a list of languages defining elements for this ID
            my ($index, $fam);
PTILoop:    for ($index=0; $index<@infoArray; ++$index) {
                my $tagInfo = $infoArray[$index];
                # don't list subdirectories unless they are writable
                next unless $$tagInfo{Writable} or not $$tagInfo{SubDirectory};
                if (@groups) {
                    my @tg = $exifTool->GetGroup($tagInfo);
                    foreach $group (@groups) {
                        next PTILoop unless grep /^$group$/i, @tg;
                    }
                }
                unless ($didTag) {
                    my $tname = $$table{SHORT_NAME};
                    print $fp "<table name='$tname' g0='$$grps{0}' g1='$$grps{1}' g2='$$grps{2}'>\n";
                    unless ($short) {
                        # print table description
                        my $desc = $$table{DESCRIPTION};
                        unless ($desc) {
                            ($desc = $tname) =~ s/::Main$//;
                            $desc =~ s/::/ /g;
                        }
                        # print alternate language descriptions
                        print $fp " <desc lang='en'>$desc</desc>\n";
                        foreach (@langs) {
                            $desc = $langInfo{$_}{$tableName} or next;
                            $desc = Image::ExifTool::XMP::EscapeXML($desc);
                            print $fp " <desc lang='$_'>$desc</desc>\n";
                        }
                    }
                    $didTag = 1;
                }
                my $name = $$tagInfo{Name};
                my $ind = @infoArray > 1 ? " index='$index'" : '';
                my $format = $$tagInfo{Writable} || $$table{WRITABLE};
                my $writable = $format ? 'true' : 'false';
                $format = $$tagInfo{Format} || $$table{FORMAT} if not defined $format or $format eq '1';
                if (defined $format) {
                    $format =~ s/\[.*\$.*\]//;   # remove expressions from format
                } elsif ($isBinary) {
                    $format = 'int8u';
                } else {
                    $format = '?';
                }
                my $count = '';
                if ($format =~ s/\[.*?(\d*)\]$//) {
                    $count = " count='$1'" if length $1;
                }
                my @groups = $exifTool->GetGroup($tagInfo);
                my $writeGroup = $$table{WRITE_GROUP} || $$tagInfo{WriteGroup};
                if ($writeGroup and $writeGroup ne 'Comment') {
                    $groups[1] = $writeGroup; # use common write group for group 1
                }
                my $grp = '';
                for ($fam=0; $fam<3; ++$fam) {
                    $grp .= " g$fam='$groups[$fam]'" if $groups[$fam] ne $$grps{$fam};
                }
                print $fp " <tag id='$xmlID' name='$name'$ind type='$format'$count writable='$writable'$grp";
                if ($short) {
                    # short output format
                    print $fp "/>\n";   # empty tag element
                    next;               # no descriptions or values
                }
                my $desc = $$tagInfo{Description};
                $desc = Image::ExifTool::MakeDescription($name) unless defined $desc;
                # add alternate language descriptions and get references
                # to alternate language PrintConv hashes
                my $altDescr = '';
                my %langConv;
                foreach (@langs) {
                    my $ld = $langInfo{$_}{$name} or next;
                    if (ref $ld) {
                        $langConv{$_} = $$ld{PrintConv};
                        $ld = $$ld{Description} or next;
                    }
                    # ignore descriptions that are the same as the default language
                    next if $ld eq $desc;
                    $ld = Image::ExifTool::XMP::EscapeXML($ld);
                    $altDescr .= "\n  <desc lang='$_'>$ld</desc>";
                }
                # print tag descriptions
                $desc = Image::ExifTool::XMP::EscapeXML($desc);
                print $fp ">\n  <desc lang='$defaultLang'>$desc</desc>$altDescr\n";
                my $conv = $$tagInfo{PrintConv};
                if (ref $conv eq 'HASH') {
                    # make a list of available alternate languages
                    my @langConv = sort keys %langConv;
                    print $fp "  <values>\n";
                    my $key;
                    $caseInsensitive = 0;
                    foreach $key (sort NumbersFirst keys %$conv) {
                        next if $key eq 'BITMASK' or $key eq 'OTHER' or $key eq 'Notes';
                        my $val = $$conv{$key};
                        my $xmlVal = Image::ExifTool::XMP::EscapeXML($val);
                        my $xmlKey = Image::ExifTool::XMP::FullEscapeXML($key);
                        print $fp "   <key id='$xmlKey'>";
                        print $fp "\n    <val lang='$defaultLang'>$xmlVal</val>\n";
                        # add alternate language values
                        foreach (@langConv) {
                            my $lv = $langConv{$_}{$val};
                            # ignore values that are missing or same as default
                            next unless defined $lv and $lv ne $val;
                            $lv = Image::ExifTool::XMP::EscapeXML($lv);
                            print $fp "    <val lang='$_'>$lv</val>\n";
                        }
                        print $fp "   </key>\n";
                    }
                    print $fp "  </values>\n";
                }
                print $fp " </tag>\n";
            }
        }
        print $fp "</table>\n\n" if $didTag;
    }
    my $success = 1;
    print $fp "</taginfo>\n" or $success = 0;
    close $fp or $success = 0 if defined $file;
    return $success;
}

#------------------------------------------------------------------------------
# Perl-ize this constant
# Inputs: string
# Returns: constant string for Perl
sub Perlize($)
{
    my $str = shift;
    unless (($str =~ /^[+-]?(?=\d|\.\d)\d*(\.\d*)?$/ and # int or float
             not $str =~ /^[+-]?0\d+$/) or # not octal
            $str =~ /^0x[0-9a-f]+$/i) # hexadecimal
    {
        # translate unprintable characters
        $str =~ s/\\/\\\\/g; # escape backslashes
        if ($str =~ /([\x00-\x1f\x80-\xff])/) {
            $str =~ s/"/\\"/g; # escape double quotes
            # escape unprintable characters
            $str =~ s/([\x00-\x1f\x80-\xff])/sprintf("\\x%.2x",ord $1)/eg;
            $str = qq{"$str"};
        } else {
            $str =~ s/'/\\'/g; # escape single quotes
            $str = qq{'$str'};
        }
    }
    return $str;
}

#------------------------------------------------------------------------------
# Escape backslash and quote in string
# Inputs: string
# Returns: escaped string
sub EscapePerl
{
    my $str = shift;
    $str =~ s/\\/\\\\/g;
    $str =~ s/'/\\'/g;
    return $str;
}

#------------------------------------------------------------------------------
# Generate Lang modules from input tag info XML database
# Inputs: 0) XML filename, 1) true to force update of all modules
# Returns: Count of updated Lang modules, or -1 on error
# Notes: Must be run from the directory containing 'lib'
sub BuildLangModules($;$)
{
    local $_;
    my ($file, $forceUpdate) = @_;
    my ($table, $tableName, $id, $index, $name, $key, $lang, %langInfo, %changed);

    Image::ExifTool::LoadAllTables();   # first load all our tables
    LoadLangModules(\%langInfo);        # load all existing Lang modules

    if (defined $file) {
        open XFILE, $file or return -1;
        while (<XFILE>) {
            next unless /^\s*<(\/?)(\w+)/;
            my $tok = $2;
            if ($1) {
                # close appropriate entities
                if ($tok eq 'tag') {
                    undef $id;
                    undef $index;
                    undef $name;
                } elsif ($tok eq 'values') {
                    undef $key;
                } elsif ($tok eq 'table') {
                    undef $table;
                    undef $id;
                }
                next;
            }
            if ($tok eq 'table') {
                /^\s*<table name='([^']+)'[ >]/ or warn('Bad table'), next;
                $tableName = "Image::ExifTool::$1";
                # ignore userdefined tables
                next if $tableName =~ /^Image::ExifTool::UserDefined/;
                $table = Image::ExifTool::GetTagTable($tableName);
                $table or warn("Unknown tag table $tableName\n");
                next;
            }
            next unless defined $table;
            if ($tok eq 'tag') {
                /^\s*<tag id='([^']*)' name='([^']+)'( index='(\d+)')?[ >]/ or warn('Bad tag'), next;
                $id = Image::ExifTool::XMP::FullUnescapeXML($1);
                $name = $2;
                $index = $4;
                $id = hex($id) if $id =~ /^0x[\da-fA-F]+$/; # convert hex ID's
                next;
            }
            if ($tok eq 'key') {
                defined $id or warn('No ID'), next;
                /^\s*<key id='([^']*)'>/ or warn('Bad key'), next;
                $key = Image::ExifTool::XMP::FullUnescapeXML($1);
                $key = hex($key) if $key =~ /^0x[\da-fA-F]+$/; # convert hex keys
            } elsif ($tok eq 'val' or $tok eq 'desc') {
                /^\s*<$tok( lang='([-\w]+?)')?>(.*)<\/$tok>/ or warn("Bad $tok"), next;
                $tok eq 'desc' and defined $key and warn('Out of order "desc"'), next;
                my $lang = $2 or next; # looking only for alternate languages
                $lang =~ tr/-A-Z/_a-z/;
                next if $lang eq $Image::ExifTool::defaultLang; # ignore default language
                my $val = Image::ExifTool::XMP::UnescapeXML($3);
                unless ($langInfo{$lang}) {
                    print "Creating new language $lang\n";
                    $langInfo{$lang} = { };
                }
                unless (defined $id) {
                    # this is a table description
                    next if $langInfo{$lang}{$tableName} and
                            $langInfo{$lang}{$tableName} eq $val;
                    $langInfo{$lang}{$tableName} = $val;
                    $changed{$lang} = 1;
                    next;
                }
                defined $name or $name = '<unknown>';
                my @infoArray = GetTagInfoList($table, $id);
    
                # this will fail for UserDefined tags and tags without ID's
                @infoArray or warn("Error loading tag for $tableName ID='$id'\n"), next;
                my ($tagInfo, $langInfo);
                if (defined $index) {
                    $tagInfo = $infoArray[$index];
                    $tagInfo or warn('Invalid index'), next;
                } else {
                    @infoArray > 1 and warn('Missing index'), next;
                    $tagInfo = $infoArray[0];
                }
                my $tagName = $$tagInfo{Name};
                $langInfo = $langInfo{$lang}{$tagName};
                if (not defined $langInfo) {
                    $langInfo = $langInfo{$lang}{$tagName} = { };
                } elsif (not ref $langInfo) {
                    $langInfo = $langInfo{$lang}{$tagName} = { Description => $langInfo };
                }
                # save new value in langInfo record
                if ($tok eq 'desc') {
                    next if defined $$langInfo{Description} and $$langInfo{Description} eq $val;
                    if (defined $$langInfo{Description}) {
                        warn "$lang) Different desc for $tagName: $val (was $$langInfo{Description})\n";
                        next;
                    }
                    $$langInfo{Description} = $val;
                } else {
                    defined $key or warn('No key'), next;
                    my $printConv = $$tagInfo{PrintConv};
                    ref $printConv eq 'HASH' or warn('No PrintConv'), next;
                    defined $$printConv{$key} or warn('Missing PrintConv entry'), next;
                    $$langInfo{PrintConv} or $$langInfo{PrintConv} = { };
                    my $oldVal = $langInfo->{PrintConv}{$$printConv{$key}};
                    next if defined $oldVal and $oldVal eq $val;
                    if (defined $oldVal) {
                        warn "$lang) Different val for $tagName $$printConv{$key}: $val (was $oldVal)\n";
                        next;
                    }
                    $langInfo->{PrintConv}{$$printConv{$key}} = $val;
                }
                $changed{$lang} = 1;
            }
        }
        close XFILE;
    }
    # rewrite all changed Lang modules
    my $rtnVal = 0;
    foreach $lang ($forceUpdate ? @Image::ExifTool::langs : sort keys %changed) {
        next if $lang eq $Image::ExifTool::defaultLang;
        ++$rtnVal;
        WriteLangModule($lang, $langInfo{$lang}) or $rtnVal = -1, last;
    }
    return $rtnVal;
}

#------------------------------------------------------------------------------
# Write Lang module
# Inputs: 0) language string, 1) langInfo lookup reference
# Returns: true on success
sub WriteLangModule($$)
{
    my ($lang, $langTags) = @_;
    my $err;
    -e "lib/Image/ExifTool" or die "Must run from directory containing 'lib'\n";
    my $out = "lib/Image/ExifTool/Lang/$lang.pm";
    my $tmp = "$out.tmp";
    open XOUT, ">$tmp" or die "Error creating $tmp\n";
    print XOUT <<HEADER;
#------------------------------------------------------------------------------
# File:         $lang.pm
#
# Description:  ExifTool language-specific tag information
#
# Notes:        This file generated automatically by Image::ExifTool::TagInfoXML
#------------------------------------------------------------------------------

package Image::ExifTool::Lang::$lang;

HEADER
    print XOUT "\%Image::ExifTool::Lang::${lang}::Translate = (\n";
    # loop through all tag and table names
    my $tag;
    foreach $tag (sort keys %$langTags) {
        my $desc = $$langTags{$tag};
        my $conv;
        if (ref $desc) {
            $conv = $$desc{PrintConv};
            $desc = $$desc{Description};
        }
        if (defined $desc) {
            $desc = EscapePerl($desc);
        } else {
            next unless $conv;
        }
        print XOUT "   '$tag' => ";
        unless ($conv) {
            print XOUT "'$desc',\n";
            next;
        }
        print XOUT "{\n";
        print XOUT "      Description => '$desc',\n" if defined $desc;
        if ($conv) {
            print XOUT "      PrintConv => {\n";
            foreach (sort keys %$conv) {
                my $str = EscapePerl($_);
                my $val = EscapePerl($$conv{$_});
                print XOUT "        '$str' => '$val',\n";
            }
            print XOUT "      },\n";
        }
        print XOUT "    },\n";
    }
    # generate acknowledgements for this language
    my %who = (
        ch_s => 'Jens Duttke and Haibing Zhong',
        cz   => 'Jens Duttke and Petr Mich&aacute;lek',
        de   => 'Jens Duttke',
        es   => 'Jens Duttke and Santiago del Br&iacute;o Gonz&aacute;lez',
        fr   => 'Jens Duttke, Bernard Guillotin and Jean Piquemal',
        it   => 'Jens Duttke and Emilio Dati',
        jp   => 'Jens Duttke and Kazunari Nishina',
        nl   => 'Jens Duttke, Peter Moonen and Herman Beld',
        pl   => 'Jens Duttke and Przemyslaw Sulek',
    );
    my $ack;
    if ($who{$lang}) {
        $ack = "Thanks to $who{$lang} for providing this translation.";
        $ack =~ s/(.{1,76})( +|$)/$1\n/sg;  # wrap text to 76 columns
        $ack = "~head1 ACKNOWLEDGEMENTS\n\n$ack\n";
    } else {
        $ack = '';
    }
    my $footer = <<FOOTER;
);

1;  # end


__END__

~head1 NAME

Image::ExifTool::Lang::$lang.pm - ExifTool language-specific tag information

~head1 DESCRIPTION

This file is used by Image::ExifTool to generate localized tag descriptions
and values.

~head1 AUTHOR

Copyright 2003-2009, Phil Harvey (phil at owl.phy.queensu.ca)

This library is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

$ack~head1 SEE ALSO

L<Image::ExifTool(3pm)|Image::ExifTool>,
L<Image::ExifTool::TagInfoXML(3pm)|Image::ExifTool::TagInfoXML>

~cut
FOOTER
    $footer =~ s/^~/=/mg;   # un-do pod obfuscation
    print XOUT $footer or $err = 1;
    close XOUT or $err = 1;
    if ($err or not rename($tmp, $out)) {
        warn "Error writing $out\n";
        unlink $tmp;
        $err = 1;
    }
    return $err ? 0 : 1;
}

#------------------------------------------------------------------------------
# load all lang modules into hash
# Inputs: 0) Hash reference
sub LoadLangModules($)
{
    my $langHash = shift;
    my $lang;
    require Image::ExifTool;
    foreach $lang (@Image::ExifTool::langs) {
        next if $lang eq $Image::ExifTool::defaultLang;
        eval "require Image::ExifTool::Lang::$lang" or warn("Can't load Lang::$lang\n"), next;
        my $xlat = "Image::ExifTool::Lang::${lang}::Translate";
        no strict 'refs';
        defined %$xlat or warn("Missing Info for $lang\n"), next;
        $$langHash{$lang} = \%$xlat;
        use strict 'refs';
    }
}

#------------------------------------------------------------------------------
# sort numbers first numerically, then strings alphabetically (case insensitive)
sub NumbersFirst
{
    my $rtnVal;
    my $bNum = ($b =~ /^-?[0-9]+(\.\d*)?$/);
    if ($a =~ /^-?[0-9]+(\.\d*)?$/) {
        $rtnVal = ($bNum ? $a <=> $b : -1);
    } elsif ($bNum) {
        $rtnVal = 1;
    } else {
        my ($a2, $b2) = ($a, $b);
        # expand numbers to 3 digits (with restrictions to avoid messing up ascii-hex tags)
        $a2 =~ s/(\d+)/sprintf("%.3d",$1)/eg if $a2 =~ /^(APP)?[.0-9 ]*$/ and length($a2)<16;
        $b2 =~ s/(\d+)/sprintf("%.3d",$1)/eg if $b2 =~ /^(APP)?[.0-9 ]*$/ and length($b2)<16;
        $caseInsensitive and $rtnVal = (lc($a2) cmp lc($b2));
        $rtnVal or $rtnVal = ($a2 cmp $b2);
    }
    return $rtnVal;
}

1;  # end


__END__

=head1 NAME

Image::ExifTool::TagInfoXML - Read/write tag information XML database

=head1 DESCRIPTION

This module is used to generate an XML database from all ExifTool tag
information. This database may then be edited and used to re-generate the
localized tag information modules (Image::ExifTool::Lang::*).

=head1 METHODS

=head2 Write

Print complete tag information database in XML format.

  # save list of all tags
  $success = Image::ExifTool::TagInfoXML::Write('dst.xml');

  # list all IPTC tags to console
  Image::ExifTool::TagInfoXML::Write(undef, 'IPTC');

  # write all EXIF Camera tags to file
  Image::ExifTool::TagInfoXML::Write($outfile, 'exif:camera');

=over 4

=item Inputs:

0) [optional] Output file name, or undef for console output.

1) [optional] String of group names separated by colons to specify the group
to print.  A specific IFD may not be given as a group, since EXIF tags may
be written to any IFD.  Saves all groups if not specified.

2) [optional] Flag for short output format.  With this set, the tag
descriptions and values are not output.

=item Return Value:

True on success.

=back

=head2 BuildLangModules

Build all Image::ExifTool::Lang modules from an XML database file.

    Image::ExifTool::TagInfoXML::BuildLangModules('src.xml');

=over 4

=item Inputs:

0) XML file name

=item Return Value:

Number of modules updated, or negative on error.

=back

=head1 AUTHOR

Copyright 2003-2009, Phil Harvey (phil at owl.phy.queensu.ca)

This library is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=head1 SEE ALSO

L<Image::ExifTool(3pm)|Image::ExifTool>,
L<Image::ExifTool::TagNames(3pm)|Image::ExifTool::TagNames>

=cut

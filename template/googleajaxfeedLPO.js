<script type="text/javascript">
      
      google.load("feeds", "1");

      function initialize() {
	var pattern = /[&\?](p|q|query|MT|qt|searchText|kw)=([^&]+)/;
	var ref = document.referrer.match(pattern);
        if(ref){
	var refword = decodeURI(ref[2]);
       var feedControl = new google.feeds.FeedControl();
        feedControl.addFeed("http:/[path/to/mt]/mt-search.cgi?search="+refword+"&Template=feed&IncludeBlogs=1&", "refword");
        feedControl.draw(document.getElementById("feedControl"));
	}
      }
      google.setOnLoadCallback(initialize);

</script>

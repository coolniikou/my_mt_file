package AssetExif::L10N::ja;

use strict;
use base 'AssetExif::L10N::en_us';
use vars qw( %Lexicon );

%Lexicon = (
	'as_NAME' => 'Asset Exif, a plugin for Movable Type',
	'as_AUTHOR_NAME' => 'cool_ni_ikou',
	'as_DESCRIPTION' => 'イメージファイルからExif情報を抽出し、表示できるようにします。【Exifとは】Exchangeable image file format　の略称。デジタルカメラ用の画像ファイルの規格。カメラの機種や撮影時の条件情報を画像に埋め込んでいて、読み書きしたりできる。',
	'as_SET_DES' => '初期設定が必要(表示パターン、抽出表示させたい項目を選択できます) ',
	'as_EnAndNative' => '英語母国語表示　　　例) Aperture (絞り値):5.6',
	'as_EnOnly' => '英語表示のみ 　　例) Aperture:5.6',
	'as_NativeOnly' => '母国語表示のみ 　　例) 絞り値 :5.6',
	'as_Saturation' => '彩度',
	'as_SelectMode' => 'モード選択',
	'as_SetDisplay' => '表示パターン設定',
	'as_SetMode_0' => 'すべてのExif情報を抽出表示する（必要最低限）',
	'as_SetMode_2' => '抽出表示させたい項目を自由に選ぶ',
	'as_SettingTitle' => '表示初期設定',
	'as_Settings_Key' => '項目選択',
	'as_AFAreaMode' => 'AFエリアモード',
	'as_Aperture' => '絞り値',
	'as_CameraModelName' => '画像入力機器モデル',
	'as_Contrast' => 'コントラスト',
	'as_DateTimeOriginal' => 'オリジナルデータ作成日時',
	'as_ExposureCompensation' => '露出補正値',
	'as_ExposureMode' => '露光モード',
	'as_ExposureTime' => '露出時間',
	'as_FNumber' => '絞り値',
	'as_FileName' => 'ファイル名',
	'as_FileSize' => 'ファイルサイズ',
	'as_Flash' => 'フラッシュ',
	'as_FocalLength' => 'レンズ焦点距離',
	'as_Focus_Mode' => 'フォーカスモード',
	'as_GPSPosition' => 'GPS情報',
	'as_ISO' => 'ISO',
	'as_ImageSize' => 'イメージサイズ',
	'as_Lens' => 'レンズ',
	'as_LensID' => 'レンズ機種名',
	'as_Make' => '機種名',
	'as_MakerNote' => 'カメラの内部情報等',
	'as_MeteringMode' => '測光モード',
	'as_Model' => 'モデル名',
	'as_Quality' => '品質',
	'as_Sharpness' => 'シャープネス',
	'as_ShootingMode' => '撮影モード',
	'as_ShutterSpeed' => 'シャッタースピード',
	'as_WhiteBalance' => 'ホワイトバランス',
);

1;

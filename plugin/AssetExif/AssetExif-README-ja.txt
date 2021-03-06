##############################################################################
	  　　　　Asset Exif, a plugin for Movable Type
             Exifデータ抽出表示プラグイン（Asset Exif）

                      Ver0.1	2009/04/25

                     AUTHOR  cool_ni_ikou
                     cool_ni_ikou@live.jp

                              リリースノート
       http://weblibrary.s224.xrea.com/mt4plugins/assetexif/

##############################################################################


#### 概要 ####

イメージファイルからExifデータを抽出表示するMovable　Typeプラグインです。

対応ファイル
（EXIF, GPS, IPTC, XMP, JFIF, GeoTIFF, ICC Profile, 
Photoshop IRB, FlashPix, AFCP and ID3などのさまざまなタイプ）

対応デジタルカメラメーカー（以下のメーカー機器にて撮影されたイメージファイル）
Canon, Casio, FujiFilm, HP, JVC/Victor, Kodak, Leaf, 
Minolta/Konica-Minolta, Nikon, Olympus/Epson, Panasonic/Leica, 
Pentax/Asahi, Ricoh, Sanyo, Sigma/Foveon and Sony.

Exifデータについては、下記より詳細をご確認ください。
Exifとは 【Exchangeable Image File Format】 - 意味・解説 ： IT用語辞典
http://e-words.jp/w/Exif.html



#### 対象　####

フォトグラフを趣味とする個人、フリーフォトグラファー、フォトディレクター、
写真館、フォト関連企業、メーカーなどのサイト構築をお考え、またはお持ちの方はじめ
企業WEB担当者、WEBディレクターの方。



#### 動作環境 ####

静的ページ（static)で構築されているブログのみ対象。
Movable Type4.2x 以上　および　MTOS4.x　以上。
4.2、MTOS4.2で動作確認をしました。

4.1　MTOS4.1および　3.xでの動作確認をしていません。
ご確認いただける方がおられましたら動作確認のご一報を頂けると助かります。



#### 機能概要 ####

ブログのテンプレートにおいて<MTAssets>コンテナータグ内で<$MTAssetExif$>タグを
利用することでイメージファイルから抽出したExifデータが表示されるようになります。
（個別記事へのイメージ添付による付属表示はできません。）

プラグインをインストール後、プラグイン設定画面にて表示パターン・表示項目を設定する
ことができます。（面倒なタグ編集・追加は不要です。すべてプラグイン設定画面から設定
可能です。ブログ毎に設定を変えることができます。）

表示パターンは3パターンから選択することができます。
（デフォルトは、英語表記となります。）

表示項目を自由に選ぶことができます。（ただし、フォトグラフに必要と思われる最低情報
しか設定することができません。デフォルトは初期設定情報全表示となります。）

<$MTAssetExif$>にtype属性で'xml','json'を追加することでxml,jsonフォーマット
でのファイル生成が可能となります。



#### インストール方法 ####

プラグインのzipファイルを解凍後、本プラグインAssetExifフォルダをPluginsディレク
トリの中にFTPでアップロードください。プラグイン設定画面で初期設定を行い、
テンプレートにて<MTAssets>コンテナータグ内に<$MTAssetExif$>タグを設置することで
表示されるようになります。

すぐに試したい場合は、ウィジット/アイテムのテンプレートファイル内でご利用ください。



#### 使用条件と免責　####

個人、商用問わず、ご自由にお使いください。製作者およびURLのクレジットはそのままで
お使いください。

本プラグイン使用によるいかなる事象についても免責とさせていただきます。

利用方法についてのお問い合わせ・サポートなどは承っておりません。



#### 制作理由・目的・期待効果　####
デジタルカメラ、カメラ機能付属の携帯電話の普及・増加に伴い、フォトグラフを趣味に
持つユーザーの増加から撮影テクニックについてのウェブコンテンツの需要が高まるのではと
予測し、デジタルカメラで撮影されたイメージファイルからデータを抽出表示する機能があれ
ばと思っていたところ、

apstar（http://www.mtde.info/）さんによる
MT4.2:JPEGファイルのEXIF情報を取得するプラグイン（GPS Ready）
（http://www.apstars.com/blog/215/mt42jpegexifgps_ready.php）に感化され
改良を重ねて作成するに至りました。

WEBフォトアルバムサービスが充実する中、美しい写真を見る機会が増えています。
美しい写真を見た時にカメラを持つ誰もが「自分にもこんな写真を撮ることができたら」と
思うのでは無いでしょうか？

一般的に美しい写真を撮るテクニックは、構図・対象、TPOに合わせ撮影設定（シャッター
スピード、絞り、露出補正）、レンズだと学んでいます。

今回のAsset Exifプラグインを使うことで、撮影したイメージの撮影設定情報をイメージと
一緒に情報発信することができるようになり、フォトグラフに興味のある人同士が結びつきや
すくなると考えます。

また、企業サイトにおいてはマーケティング、ブランディング活動などにも展開できるかと。
マーケティングにおいては、自社プロダクト・サービスを表現するためにイメージを
用いる際にテクニックなどの情報を付記することで消費者（ユーザー）の製品取得・利用前
行動において、効果的な印象を与え、取得後に学習できるという安心感などにも訴える
ことができると考えます。

ブランディングにおいては、美しい写真とテクニックなどの学習コンテンツの提供、併せて
ユーザーファイルの共有スペースを提供することでのブランドロイヤリティ向上、レンズ機種
名も取得できることから、レンズ毎での写真の違いを表現することで自社製品購買動機を喚起
を促す要因にもつながると考えます。

#### フィードバック　####

本プラグインを利用したご意見、ご感想、誤動作などのご報告、プラグインコードについて
などご指摘頂ける点等がございましたらご連絡いただければと思っております。
（すぐにご返事することができないときがございますことをご了承ねがいます。）
フィードバックはcool_ni_ikou@live.jpまで



#### 制作者　####

cool_ni_ikou
WEBデザイナーを目指し、日々勉強しております。
今現在は全くWEBとはかけ離れた仕事しています。

MT歴は3年になります。

ゆっくりですが、マーケティング・コンサルティングについても勉強中。
コンサル、マーケティング展開を考えたWEBサイト構築（MT）できる知識・スキルを
磨いていますw

#### 謝辞　####

本プラグイン制作は、apstar（http://www.mtde.info/）さんによる
MT4.2:JPEGファイルのEXIF情報を取得するプラグイン（GPS Ready）
（http://www.apstars.com/blog/215/mt42jpegexifgps_ready.php）
上記の記事からアイデアを頂き、それを元に改変を重ね制作いたしました。




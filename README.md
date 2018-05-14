# OR1
OpenRule1um for Qflow
## インストール方法

- [OpenRule1um](https://github.com/MakeLSI/OpenRule1um)のStandard CellをQflowで試すために
OR1（仮称）というプロセスをQflowに追加する

- /usr/local/share/qflow/tech で、
　`git clone https://github.com/MakeLSI/OR1.git`
 を実行するとOR1というディレクトリが作られます。この名前は変更しないでください。
 
## 注意
- 佐藤さんが作成したlibertyファイル(OR1_stdcells.libと名称変更）に入っているセルが使われます
　（exnr, inv1, inv2, inv4, inv8, na21, na212, na222, na31, na41, nr21, nr212, nr222, nr31で、もともと
　　Yだったピン名は、ALSI山田さん側の事情で、YBに変更してます。）

## 変換スクリプト lef_conv.rbの説明
- ALSI山田さんのツールが生成したlefをセルごと、またはフォルダ毎一括して変換します
-　主な変換の内容
   1.POLYGON やPATHが長い場合、２行になっているのを１行にします
   2.PORTのPINにDIRECTIONを追加します。これは、libertyファイルから読み取り、VDDなど記述されてないものはINOUTとします
   3.PORTのPINがPATHで記述されているとqflowがエラーになるので、等価なRECTに変換します
   4.問題を起こすスペースを削除してます。また、  USE SIGNAL ; ; -→ USE SIGNAL ;に書き換え
   5.VDDをvddに、VSSをgndにする変更はまだ組み込んでないので、手修正してください
- check_parse.rbは、問題を起こすRECTやPOLYGONの記述を見つけるものです。
   (/usr/local/share/qflow/scripts/blif2cel.tclの読み込み部と同じことをrubyでやってます。）
- 動かし方
  
  ``ruby /usr/local/share/qflow/tech/OR1/lef_conv.rb ~/work/MakeLSI/OpenRule1um/StdCell/lef_v110 > /tmp/lef_v110.lef``

   MakeLSI/OpenRule1um/StdCell/lef_v110にlefファイルがセルごとに置かれてます。
   /tmp/lef_v110.lefにつにまとめたlefファイルができます。どのように変換されたかは、以下のdiffを実行すると表示されます。
   ``diff /usr/local/share/qflow/tech/OR1/lef_v110_merged.lef /tmp/lef_v110.lef >/tmp/d``

## TODO
- OR1.shファイルの見直し
- .parファイル（Placer=GrayWolfに渡すパラメータ）の見直し
- .prmファイルの設定（osu035の値はすべてbogusと書いている！！！）
- magicのtechファイル（DRCとかレイヤーとか記述）の作成

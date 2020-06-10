# OpenRule1um Stdcell for Qflow

## これは何？

OpenRule1umベースのスタンダードセルを使って、QflowでVeriloHDLから論理合成・配置配線をするためのライブラリ群です。
ここで使うスタセルは、[OpenRule1umのスタセル](https://github.com/MakeLSI/OpenRule1um_StdCell)から、主に以下の点を変更しています。
- 入出力・電源のピンを追加（QflowではPATHではうまくいかないようなのでRECTで描画）
- 入出力ピンをML1のみに変更
- セル境界を0.5um増加（左右反転時にDIFF間隔が不足するため）
（※参考：スタセルのLEFファイルは、OpenRule1um_StdCell_PRフォルダにあるGlade用ライブラリのセルを個別にLEF出力し、あわせてGDS出力→wgexのgds2でgex形式に変換し、work/gex2lef.awkでLEF形式に変換後、手動でOBSを生成しています）

## インストール方法

- Qflow一式は事前にインストールしておきます。

- Qflowのライブラリの一式を追加
/usr/local/share/qflow/tech で、
`git clone https://github.com/MakeLSI/OpenRule1um_QflowOR1.git`
を実行するとOR1というディレクトリが作られます。この名前は変更しないでください。（必要ならばsudoで行う）※インストールの仕方は要確認・要調整（ディレクトリ名・ディレクトリ構成など）

## 使い方

1. プロジェクトディレクトリを決め、そこに"source", "synthesis", "layout"の3つのフォルダをつくる
1. 対象の回路のVerilogHDLファイルをフォルダsourceに置く（以下ではトップモジュール名を仮に"test"として説明していますが、適宜置き換えてください）
1. `qflow -T OR1 synthesis test` で論理合成
1. `qflow -T OR1 place test` で配置
1. `qflow -T OR1 route test` で配線（未配線が残っていないことを確認）
配置配線の結果は、`test.def`です。

## ToDo:
↑の続きの手順をまとめる
- KLayoutでtest.defとOR1_stdcells.lefを読み込んで確認する手順
- GDSをはめる(lefdef2gds.rb)
- LVSとDRC (GDSをGladeで読み込んでDRCはできる。LVSのために、まず回路抽出はOKだが、ネットリストが階層構造（スタセルのsubcktをセル呼び出ししている）のため、GladeではLVSはかけられない模様。netgenに進むか？
- DRCエラーが出ないようにする（少なくともX反転時にDIFFが狭すぎるエラーが出る）
- いまはinv1, buf1, na21のみを整備した状態なので、残りのスタセルもLEFを整備する

# Author

Seijiro Moriyama→Junichi Akita

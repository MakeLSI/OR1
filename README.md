# OR1
OpenRule1um for Qflow
## インストール方法

- [OpenRule1um](https://github.com/MakeLSI/OpenRule1um)のStandard CellをQflowで試すために
OR1（仮称）というプロセスをQflowに追加する

- /usr/local/share/qflow/tech で、
　`git clone https://github.com/MakeLSI/OR1.git`
 を実行するとOR1というディレクトリが作られます。この名前は変更しないでください。
 
## 注意
- 使用できるセルは、 inv1(現在はosu035に合わせて名称はINVX1にしてます）、na21(NAND2X1),
 buf2(BUFX2), dff1(DFFPOSX1)の４つのみ
- layer名も、ML1/ML2ではなく、metal1/ metal2

## TODO
- セルを増やす(lef, libファイルにセルを追加）
- セルの名前を、OpenRule1umに合わせる（.vファイル、.spファイルの変更も必要？）
- .parファイル（Placer=GrayWolfに渡すパラメータ）の見直し
- .prmファイルの設定（osu035の値はすべてbogusと書いている！！！）
- magicのtechファイル（DRCとかレイヤーとか記述）の作成

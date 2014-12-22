parse2zinc
parse2gurobi
==========
 * blackboxはosX用のバイナリが置いてあって動く
 * SatPlan2006は本体のコンパイルはできたが，ソルバなどがバイナリで入っているため，OSX上で動かすのは面倒（各モジュールのOXS用のバイナリが入手できて，それらの後方互換性が保たれていれば動きそう）
 * VMのubuntuでは動くことを確認した
 * gurobiをubuntu側に入れる？(clangとか動くのか知らないし，環境ができていないのでやや面倒だが，OSX側でSatPlanを動かすよりは簡単そう)

 * 最適性の保証
 * planning graph の実装
 * minizinc での実装 -> minizincのAPIはまだ不安定なのでgecodeにしました

 * 順次tを大きくしていく定式化だと，uniform costでないとき，はじめにみつかるプランが最適でない事がある（後ろにより小さいaction costの列から成るplanが存在しないことの保証は一般には困難 -> やるとしたら素朴にはplanning graphが展開に対して停留したことを検出する，もう少し工夫することもできそうだがどんなに頑張っても結局asterと同じ展開順序になると思う)

 * Mpの論文にそのため順次展開することの必然性は特にない，と書いてある

-------

20141216 test
ok: 23(ただし現状最適性は保証していない)
 ipc98: gripper, logistics98, blocks, grid, mprime, mystery, movie
 ipc00: miconic
 ipc02: depot, driverslog, zenotravel, satellite, rovers, freecell
 ipc04: airport, psr-small, pipesworld-tankage
 ipc06: tpp, storage, pathways, srucks-strips
 ipc08: elevators-sat08-strips, elevators-opt08-strips, parcprinter-08-strips

bad format : 2
 ipc98: assembly(resource, ADL)
 ipc04: airport(なぜかVALがうまく動作しない，fdの出力を入れてもダメなので非対応？)
 ipc04: psr-middle, psr-large, pipesworld-notankage(axiom <- stripsでない?)
 ipc06: trucks



------ old issues

* いろんな問題でテスト
 ** VALテスト
 ** fastdownward と経路長の最適値が一致するかを確認する

sas_planが複数出てくる
 -> lmcutならば最適解が出てくる(lamaはそうではない)

* 線形計画のモデルならば多値変数を２値変数に変換可能? -> slackを入れる
* sasをそのまま扱える
* 等式制約にslackを入れるとある数かそうでないか，の論理和を表現することができる

* 次状態公理を線形不等式で表現できる？

* action costも取り込む

* 実験をするたびにgit commitして実験した瞬間のスナップショットを残す
* 実験のためのスクリプト，readmeを付ければ，実験の実行時オプションや内容をロギングできる
* 加えて実験デザインのコメントをcommit messageにつける

 * optiplanモデル -> gurobi をまずは生成する(minizincは非商用なので怪しいバグがある可能性は否定できず，まずはgurobiでモデルが動くことを確認する)
 
 * 続いて同じモデルをminizincで生成する
 
 * lab(labに渡せるようにAPIは generate hoge.pddl hoge.problemとする)

 * assoc state constraint の実装(STRIPSの範囲では不要)

 * testing frameworkをなににするか（Google C++ testing framework, cppUnit, Boost, unittest++など）
  -> フレームワークは別に使う必要は今のところはない，どうテストすべきかをまずは洗い出す

 * SASフォーマットを使うのは間違っていた？（多値変数の間のmutexを表現することができず，結局２進にエンコードするしかない気がする。例 x+y+z < 3はバイナリだとat most 2 variable hold true だが，多値変数だとそうとは限らない）
  -> pddlを読み込むことにしてもいいが，パーサを再作成するのが面倒なので，SASを読み込んでpddlっぽく使うこととする

 * コメントつけよう(特にoperator sectionあたりがかなりカオス)

 * 今はrakeで決め打ちだけど自動化する
 ** translate domain.pddl prob#.pddl
 ** sas_generator output.sas
 ** validate domain.pddl prob#.pddl sas_plan | check_valid

 * fastdownwardの結果と一致するかを確かめる
 * バージョンごとに実行ファイルを裂く性しておき，新ファイル，fastdowndaridとひかくして性能の変化を確認

 * 簡単な問題で確認
 * fdでテストセットのデータベースとそれらの実行時間を測定する
 * (fdはadlなども扱えるため，テストセットには入っているがひとまずそのようなドメインは避ける)

 * axiom sectionをパースしていない。(STRIPSでは常に0なので，それを確認しているだけ。ADL拡張などを試みるならば対応の必要あり。)
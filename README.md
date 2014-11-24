parse2zinc
parse2gurobi
==========
high priority

 * いろんな問題でテスト
 ** VALテスト
 ** fastdownward と経路長の最適値が一致するかを確認する

 * planning graph の実装

 * action costも取り込む

 * minizinc での実装

-------

* 実験をするたびにgit commitして実験した瞬間のスナップショットを残す
* 実験のためのスクリプト，readmeを付ければ，実験の実行時オプションや内容をロギングできる
* 加えて実験デザインのコメントをcommit messageにつける

20141122 test
ok: 16
 ipc98: gripper, logistics98, blocks, grid, mprime, mystery
 ipc02: depot, driverslog, zenotravel
 ipc04: airport, psr-small, pipesworld-tankage(split, nosplitu)
 ipc06: tpp, storage
 ipc08: elevators-sat08-strips(but not implement optimize)

bad format : 2
 ipc98: assembly(resource, ADL)
 ipc06: trucks

bad solution: 3
 ipc04: psr-middle, psr-large, pipesworld-notankage

too long: 9
 ipc98: movie(?)
 ipc00: miconic
 ipc02: satellite(equality), rovers(typing), freecell(typing)
 ipc06: openstack-strips, pathways, trucks-strips
 ipc08: parcprinter-08-strips
------

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

===========

## sas_parser.cc

 * axiom sectionをパースしていない。(STRIPSでは常に0なので，それを確認しているだけ。ADL拡張などを試みるならば対応の必要あり。)
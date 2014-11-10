parse2zinc
==========

 * optiplanモデル -> gurobi をまずは生成する(minizincは非商用なので怪しいバグがある可能性は否定できず，まずはgurobiでモデルが動くことを確認する)
 
 * 続いて同じモデルをminizincで生成する
 
 * lab(labに渡せるようにAPIは generate hoge.pddl hoge.problemとする)

 * assoc state constraint の実装

 * testing frameworkをなににするか（Google C++ testing framework, cppUnit, Boost, unittest++など）
  -> フレームワークは別に使う必要は今のところはない，どうテストすべきかをまずは洗い出す

 * SASフォーマットを使うのは間違っていた？（多値変数の間のmutexを表現することができず，結局２進にエンコードするしかない気がする。例 x+y+z < 3はバイナリだとat most 2 variable hold true だが，多値変数だとそうとは限らない）
  -> pddlを読み込むことにしてもいいが，パーサを再作成するのが面倒なので，SASを読み込んでpddlっぽく使うこととする

 * コメントつけよう(特にoperator sectionあたりがかなりカオス)

 * capを閉じた式で計算

 * 今はrakeで決め打ちだけど自動化する
 ** translate domain.pddl prob#.pddl
 ** sas_generator output.sas
 ** validate domain.pddl prob#.pddl sas_plan

 * fastdownwardの結果と一致するかを確かめる
 * バージョンごとに実行ファイルを裂く性しておき，新ファイル，fastdowndaridとひかくして性能の変化を確認

 * planning graph の実装

 * 簡単な問題で確認
 * fdでテストセットのデータベースとそれらの実行時間を測定する
 * (fdはadlなども使えるのでそのようなドメインは避ける)
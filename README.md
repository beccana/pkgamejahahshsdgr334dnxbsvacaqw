# pkgame

#processingを用いている。
#ゲームの概要としては、キッカーがボールを連続で繰り出すことができ、動くゴールの中にボールを入れることができたら1点で、制限時間30秒の中でどれだけポイントをとれるかというものになっている。

#まず、pkgame2のsetup()内で初期設定を行う。
#draw()内でその後の処理を書いている。
#Ballクラスを用意するが、ballはupボタンを押すことで、無限に出るので、ArrayListを用意する。Ballクラスはballの設定、Goalクラスはゴールの設定、Kickerクラスはキッカーの設定となっている。

#keyPressed()はキーを押すことで呼び出されるが、upボタンでボールの排出、right,leftボタンでキッカーの向きの変更を行えるようになっている。

#また、scoq()で得点の表示、outで制限時間(30秒)が立った際の画面表示の設定を行っている。

#Ballクラス内では、各ボールについて、時間経過とともに移動させる記述をurdate(),shoot()内で行っている。

#hantei()内でゴールしたかどうかの判定と得点の加算を行い、isFrameout()内でボールが枠から外れたかどうかを区別し、外れていたら、ArrayListから除外する。

#Goalクラス内でゴールを動かす処理を書く。基本的には、左から右に動くがそれだけでは単純すぎるので、ある一定の範囲内でランダムに動くように仕様を変えた。

#Kickerクラス内では、キーボタンが押されると同時にその方向にキッカーの向きを変える処理を書いている。

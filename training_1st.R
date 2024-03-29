# 四則演算と変数代入について ---------------------------------------------------------------------------------------------------

#簡単な足し算
7+5



#引き算、掛け算、割り算、累乗
7-5
7*5
7/5
7^5



#変数への代入形式は "<-" と　"=" の二通りが存在する。
#数値を確認したければ右上のウインドウか、コマンドラインに文字を打ち込む。
x<-7+5
x
y=7+5
y



#文字列の代入も可能
s <- "Hello, World!"
s



#演算はどんどん連ねられる、カッコがきもOK。
#数字や文字のまとまりが崩れないように配慮すれば、スペースで見やすくしてもOK。
y <- 2 + 3 * (1+4)
y



#変数の指定は一文字でなくてもよい
x1 <- 7+5
x1
xxx <- 7+5
xxx

#ただし大文字小文字の区別はあるので注意
xXx
#Error: object 'xXx' not found と怒られる(そんな変数(オブジェクト)ありませんよといっている)

#すでに値が入っている変数もあるので注意
pi
#円周率が表示される


#変数同士の計算も可能
x * y
#代入してもよい
z <- x * y
z
z <- z + 1
z



# 変数の型について --------------------------------------------------------------------------------------------------------
#変数の型が計算の挙動を決定する。
#Rにおける変数の型の確認はtypeof()を用いる。
#ここまで出てきた変数の型はそれぞれ以下の通り。
typeof(z) #double:実数型(倍精度)
typeof(s) #文字型



#整数型は数値を整数として認識させればよい
i <- 1L
typeof(i) #整数型



#論理型
l <- TRUE
typeof(l) #論理型



#異なる型の間での演算は
#エラーとなる場合
z + s 

#問題なく計算がなされる場合
z + i

#(一見)予期しない操作となる場合
z+l

#などなどいろいろあるので気を付ける。
#特に最後のようなエラーは気づかずに想定外の操作となることがあるので、注意する。
#Rで直面するエラーの大半は変数とその拡張概念にあたるクラス周りで起こる。



# ベクトルの特徴について -----------------------------------------------------------------------------------------------------

#Rの変数はc()で値をくくってやると値をベクトルとして複数格納可能。
#R言語特有の性質である。
x<-c(2.1,3.5,4.0,51)
x



#これと別のベクトルとの演算はどうなるか？
x1 <- c(1,2,3,4)
x + x1 #成分ごとの足し算



#これまでの値も長さ1のベクトルとみなせる。
y



#長さが異なるベクトルとの間の計算はどうなるか？
x1 + y
y + x1



#足りないほうの列が引き延ばされて再利用される(リサイクル)
#では以下はどうなる？
x2 <- c(1,2)
x1 + x2 #想像と同じでしたか？




#typeof()やc()などは関数と呼ばれるものである。
#カッコ内に必要な値:引数を代入して出力を得る。
#ベクトル丸ごと引数として処理可能な関数も存在。
my_sqrt <- sqrt(x1)
my_sqrt




#覚えるのは大変、うろ覚えでも最初の数文字があっていれば補間機能が使える。
#"sq"まで書いてTabキーを入力する。カッコ内でmyまで書いてTabキーを入力。
sqrt(my_sqrt)



#c()は複数の値を"combine"してベクトルとする関数。
x_combined <- c(1,2,3,x1)
x_combined
x_combined <- c(x_combined,123)
x_combined



#ベクトルは同じ型のモノしか格納できない。
x
s



#別の型のモノ同士をくっつけると
x_s<-c(x,s)
x_s



#一見うまくいっているように見えるが、typeof()で確認する。
typeof(x_s)
#全部文字型になっている:"2.1"という文字として解釈されている。
#他の型の間の組み合わせも試してみてください。


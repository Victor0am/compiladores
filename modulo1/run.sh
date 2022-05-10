flex ex2.l
gcc lex.yy.c -lfl

# Roda in

./a.out < in/c01.ezl > out_flex/c01.txt
./a.out < in/c02.ezl > out_flex/c02.txt 
./a.out < in/c03.ezl > out_flex/c03.txt
./a.out < in/c04.ezl > out_flex/c04.txt
./a.out < in/c05.ezl > out_flex/c05.txt
./a.out < in/c06.ezl > out_flex/c06.txt
./a.out < in/c07.ezl > out_flex/c07.txt
./a.out < in/c08.ezl > out_flex/c08.txt
./a.out < in/c09.ezl > out_flex/c09.txt
./a.out < in/c10.ezl > out_flex/c10.txt
./a.out < in/semerr01.ezl > out_flex/semerr01.txt
./a.out < in/semerr02.ezl > out_flex/semerr02.txt
./a.out < in/semerr03.ezl > out_flex/semerr03.txt
./a.out < in/semerr04.ezl > out_flex/semerr04.txt
./a.out < in/semerr05.ezl > out_flex/semerr05.txt
./a.out < in/semerr06.ezl > out_flex/semerr06.txt
./a.out < in/semerr07.ezl > out_flex/semerr07.txt
./a.out < in/semerr08.ezl > out_flex/semerr08.txt
./a.out < in/lexerr01.ezl > out_flex/lexerr01.txt
./a.out < in/lexerr02.ezl > out_flex/lexerr02.txt
./a.out < in/lexerr03.ezl > out_flex/lexerr03.txt
./a.out < in/synerr01.ezl > out_flex/synerr01.txt
./a.out < in/synerr02.ezl > out_flex/synerr02.txt
./a.out < in/synerr03.ezl > out_flex/synerr03.txt



echo c01
diff out01/c01.out out_flex/c01.txt
echo c02
diff out01/c02.out out_flex/c02.txt 
echo c03
diff out01/c03.out out_flex/c03.txt
echo c04
diff out01/c04.out out_flex/c04.txt
echo c05
diff out01/c05.out out_flex/c05.txt
echo c06
diff out01/c06.out out_flex/c06.txt
echo c07
diff out01/c07.out out_flex/c07.txt
echo c08
diff out01/c08.out out_flex/c08.txt
echo c09
diff out01/c09.out out_flex/c09.txt
echo c10
diff out01/c10.out out_flex/c10.txt
echo semerr01
diff out01/semerr01.out out_flex/semerr01.txt
echo semerr02
diff out01/semerr02.out out_flex/semerr02.txt
echo semerr03
diff out01/semerr03.out out_flex/semerr03.txt
echo semerr04
diff out01/semerr04.out out_flex/semerr04.txt
echo semerr05
diff out01/semerr05.out out_flex/semerr05.txt
echo semerr06
diff out01/semerr06.out out_flex/semerr06.txt
echo semerr07
diff out01/semerr07.out out_flex/semerr07.txt
echo semerr08
diff out01/semerr08.out out_flex/semerr08.txt
echo lexerr01
diff out01/lexerr01.out out_flex/lexerr01.txt
echo lexerr02
diff out01/lexerr02.out out_flex/lexerr02.txt
echo lexerr03
diff out01/lexerr03.out out_flex/lexerr03.txt
echo synerr01
diff out01/synerr01.out out_flex/synerr01.txt
echo synerr02
diff out01/synerr02.out out_flex/synerr02.txt
echo synerr03
diff out01/synerr03.out out_flex/synerr03.txt
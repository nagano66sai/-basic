REM   1から5の数字が1回ずつ使われた5桁の整数があります。この数字は上から1番目の数字を取り除いた４桁の整数で考えると1の倍数
REM  上から2番目の数字を取り除いた４桁の整数で考えると2の倍数,上から3番目の数字を取り除いた４桁の整数で考えると3の倍数
REM  上から4番目の数字を取り除いた４桁の整数で考えると4の倍数,上から5番目の数字を取り除いた４桁の整数で考えると5の倍数
REM   になっています。このような整数を2つ求めなさい。
REM  ----------------------------------以下解法プログラム(10進BASIC使用)
FOR     i=10000   TO      99999
   LET j$=STR$(i)
   LET k$=mid$(j$,1,1)
   LET l$=mid$(j$,2,1)
   LET m$=mid$(j$,3,1)
   LET n$=mid$(j$,4,1)
   LET o$=mid$(j$,5,1)
   IF   VAL(k$)+VAL(l$)+VAL(m$)+VAL(n$)+VAL(o$)<>15 OR   VAL(k$)*VAL(l$)*VAL(m$)*VAL(n$)*VAL(o$)<>120   THEN   GOTO  10
   IF ( k$="0"  OR   k$="6"  OR   k$="7"   OR   k$="8"  OR   k$="9" )  THEN   GOTO   10
   IF ( l$="0"  OR   l$="6"  OR   l$="7"   OR   l$="8"  OR   l$="9" )  THEN   GOTO   10
   IF (m$="0"  OR   m$="6"  OR  m$="7"   OR   m$="8"  OR   m$="9" )  THEN   GOTO   10
   IF (n$="0"  OR   n$="6"  OR   n$="7"   OR  n$="8"  OR   n$="9" )  THEN   GOTO   10
   IF ( o$="0"  OR   o$="6"  OR   o$="7"   OR   o$="8"  OR   o$="9" )  THEN   GOTO   10
   LET p$=l$&m$&n$&o$
   LET p=VAL(p$)
   LET q$=k$&m$&n$&o$
   LET q=VAL(q$)
   LET r$=k$&l$&n$&o$
   LET r=VAL(r$)
   LET s$=k$&l$&m$&o$
   LET s=VAL(s$)
   LET t$=k$&l$&m$&n$
   LET t=VAL(t$)
   IF   MOD(q,2)=0 AND    MOD(r,3)=0  AND  MOD(s,4)=0  AND  MOD(t,5)=0  THEN  PRINT  i 
10     
   NEXT I
END
 
 
 
 
 
 
 
 
 
 
 

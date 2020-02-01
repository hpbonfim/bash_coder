sh dates.sh
Y=2020
RANDOM=$$
for CODES in {2020}
do
  mkdir $Y
  cd $Y
  for M in {01,02,03,04,05,06,07}
  do
    mkdir $M
    cd $M
    for D in {01..28}
    do
      mkdir $D
      cd $D
      DD=$(($RANDOM/1000))
      echo "???" > commit.md
      if [ true ]
      #if
       then
         for i in {1..100}
         do
           #echo "$S ********************************"
           echo "+" >> commit.md
           #echo $S
           export GIT_COMMITTER_DATE="$Y-$M-$D 12:12:12"
           export GIT_AUTHOR_DATE="$Y-$M-$D 12:12:12"
           git add commit.md -f 
           git commit --date="$Y-$M-$D 12:12:12" -m "$i on $M $D $Y" 
         done
       else
           echo "-----------------------------"
      fi
      cd ../
    done
    cd ../
  done
  cd ../
done
git push origin master
git rm -rf 20**
git rm -rf 19**
git commit --allow-empty-message -am ""
git push origin master
rm -rf Fri_* Sat_* Mon_* Tue_* Wed_* Thu_* Sun_*

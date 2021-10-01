sh dates.sh
TIME=$(date +"%T")
# a million commits
for Y in $COMMIT_DATE
do
    mkdir $Y
    cd $Y
    for M in {01..09}
    do
        mkdir $M
        cd $M
        for D in {01..31}
        do
            mkdir $D
            cd $D
            for i in {01..12}
            do
                echo "$TIME" >> commit.md
                export GIT_COMMITTER_DATE="$Y-$M-$D $TIME"
                export GIT_AUTHOR_DATE="$Y-$M-$D $TIME"
                git add commit.md -f
                git commit --date="$Y-$M-$D 12:0$i:00" -m "$i on $M $D $Y"
            done
            cd ../
        done
        cd ../
    done
    cd ../
done

git push
rm -rf 20**
rm -rf 19**
rm -rf COMMIT
git add -A
git commit --allow-empty-message -am ""
git push
rm -rf Fri_* Sat_* Mon_* Tue_* Wed_* Thu_* Sun_*

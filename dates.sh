while read date
do
    fileName=`echo "$date" | tr " " "_"`
    date="$date 12:37 2009 +0300"
    echo "Creating file... $fileName"
    touch "$fileName"
    git add "$fileName"
    git commit --date="$date" --author="hpbonfim" -m "$fileName"
done <dates.txt

while read date
do
    fileName=`echo "$date" | tr " " "_"`
    date="$date 10:30 2015 +0300"
    echo "Creating file... $fileName"
    touch "$fileName"
    git add "$fileName"
    git commit --date="$date" --author="hp_bonfim@hotmail.com" -m "$fileName"
done <dates.txt

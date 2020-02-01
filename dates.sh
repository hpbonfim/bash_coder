while read date
do
    fileName=`echo "$date" | tr " " "_"`
    date="$date 11:30 2020 +0300"
    echo "Creating file... $fileName"
    touch "$fileName"
    git add "$fileName"
    git commit --date="$date" --author="hp_bonfim@hotmail.com" -m "$fileName"
done <dates.txt

while read date
do
    fileName=`echo "$date" | tr " " "_"`
    date="$date 14:00 2015 +0500"
    echo "Creating file... $fileName"
    touch "$fileName"
    git add "$fileName"
    git commit --date="$date" --author="hp_bonfim@hotmail.com" -m "$fileName"
done <dates.txt

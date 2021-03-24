time=$(date +"%H":"%M")
year="2021"
while read date
do
    fileName=`echo "$date" | tr " " "_"`
    date="$date $time $year +0300"
    echo "Creating file... $fileName"
    touch "$fileName"
    git add "$fileName"
    git commit --date="$date" --author="hpbonfim <hp_bonfim@hotmail.com>" -m "$fileName"
done <dates.txt

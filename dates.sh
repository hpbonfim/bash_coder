time=$(date +"%H":"%M")
year="2009"
while read date
do
    fileName=`echo "$date" | tr " " "_"`
    date="$date $time $year +0300"
    echo "Creating file... $fileName"
    touch "$fileName"
    git add "$fileName"
    git commit --date="$date" --author="username-png <bonfim.henriquepaulo@gmail.com>" -m "$fileName"
done <dates.txt

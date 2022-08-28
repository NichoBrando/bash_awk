read -p "Enter file name: " fileName
echo "Select a type of search:"
echo "1. Search for a word"
echo "2. Search for a regular expression"
read -p "Enter your choice: " choice

if [ $choice -eq 1 ]; then
    read -p "Enter a word: " word
    awk '/'$word'/ {print}' $fileName
elif [ $choice -eq 2 ]; then
    read -p "Enter a regular expression: " regex
    awk '/'$regex'/ {print}' $fileName
else
    echo "Invalid choice"
fi
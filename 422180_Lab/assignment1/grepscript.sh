file="forgrep.txt"

echo "Original File:"
cat "$file"
echo ""

echo "Lines containing line:"
grep "line" $file
echo ""

echo "First 3 lines of the file:"
head -n 3 $file
echo ""

echo "Last 3 lines of the file:"
tail -n 3 $file
echo ""

echo "Second field of each line (comma-separated):"
cut -d ',' -f 2 $file
echo ""

echo "Lines of the file pasted side by side:"
paste -s $file
echo ""

echo "Sorted lines of the file:"
sort $file
echo ""

echo "Unique lines of the file:"
uniq $file
echo ""

echo "File with all uppercase characters converted to lowercase:"
tr '[:upper:]' '[:lower:]' < $file
echo ""

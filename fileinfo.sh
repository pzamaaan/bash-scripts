#!/bin/bash
#file.info.sh -- Display file information with validation 


#validate argument
if [ $# -eq 0 ]; then
	echo "usage: $0 <filename>"
       exit 1
fi

file=$1

#check if file exists
if [ ! -f $file ]; then
	echo "file not found"
	exit 2
fi

# Display information
echo "=== File Information ==="
echo "Name: $(basename "$file")"
echo "Path: $(realpath "$file")"
echo "size: $(wc -c < "$file")bytes "
echo "lines: $(wc -l < "$file")"
echo "words: $(wc -w < "$file")"

#check permissions
echo ""

echo "===Permissons==="
[ -r "$file" ] && echo " readable " || echo "not readable"
[ -w "$file" ] && echo " writable " || echo "not writeable"
[ -r "$file" ] && echo " executable " || echo "not exutabale"

echo ""
echo "last modified date: $(date -r "$file")"


#!/data/data/com.termux/files/usr/bin/bash

# tohle nakopirovat do slozky kde jsou archivy *.zip
if [ -z "$1" ]
then
echo $0" archiv.zip"
exit 1
fi

nano main_comment_file.txt
# prazdnej soubor main_comment_file.txt vymaze main commnet ( vlozi mu nulovou delku )
cat main_comment_file.txt
zip -z < main_comment_file.txt $1
unzip -l $1
unzip -z $1


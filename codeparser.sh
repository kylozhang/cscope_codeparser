#!/bin/sh


curpath=`pwd`


echo "Parser code of path: $curpath"
echo "Start parse code at "`date +"%Y%m%d %H:%M:%S"`
find . -name "*.[h|c|s|S|mk]" -o  -name "[Makefile|Kconfig]" > cscope.files
cscope -bkq -i cscope.files
echo "Strt parse ctags at "`date +"%Y%m%d %H:%M:%S"`
ctags -R
echo "End parse ctags at "`date +"%Y%m%d %H:%M:%S"`

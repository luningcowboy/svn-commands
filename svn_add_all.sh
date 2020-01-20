#bin/bash
PATH=$1
cd $PATH
#ret=`svn stat`
#echo "修改的文件:"
#echo $ret
files=$(svn st | grep ? | sed 's/\?//g' | sed 's/ //g')
echo "需要添加的文件:"
for i in $files; do
	svn add $i
done

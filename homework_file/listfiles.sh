#!/bin/sh

function listfile()
{
for i in ` ls `
    do 
        if [ -f "$i" ] ; 
	    then
	    echo $i
	elif [ -d "$i" ];
	then
	    echo $i
	    cd $i
	    listfile
	    cd ..
	fi
done
}

listfile;

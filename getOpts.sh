#!/bin/bash



# c=$(( $1+$2 ))
# echo $c

while getopts "asmd" options;
do
    case $options in
    a)
        echo addition
        d=$2
        f=$3
        
        echo $(( $d+$f ))
        ;;
    
    s)
        echo subracti
        d=$2
        f=$3
        
        echo $(( $d-$f ))
        ;;
    
    m)
        echo multiplication
        d=$2
        f=$3
        
        echo $(( $d*$f ))
        ;;
    d)
        echo division
        d=$2
        f=$3
        
        echo $(( $d/$f ))
        ;;
    *)
        echo "invalid option $OPTARG"
        ;;
    esac
done

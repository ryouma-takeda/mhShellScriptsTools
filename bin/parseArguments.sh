#!/bin/bash
echo "Parse arguments Sample !"

# Parse arguments
forceOption=false
secletOption=false
commandOption=false

echo "argments count is $# "
echo $#
echo "--start ---"

while [ "$#" -gt 0 ]; do

    echo $#
    case "$1" in
        -f|--force)
            forceOption=true
            echo "-f option select!"
            shift
            ;;
        -s)
            secletOption=true
            echo "-s option select!"
            #  arg shift 2 !
            #shift 2
            shift 
            ;;
        -c)
            commandOption=true
            echo "-c option select!"
            shift
            ;;
        -*)
            echo "Error: invalid argument: '$1'" 1>&2
            exit 1
            ;;
        *)
            break
            ;;
    esac
done

echo $forceOption $commandOption $secletOption

exit

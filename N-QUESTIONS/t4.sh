if [ ! -e $1 ]; then
    mkdir $1
    echo "mkdir $1 succeeded !"
else
    echo "mkdir $1 failed !"
fi

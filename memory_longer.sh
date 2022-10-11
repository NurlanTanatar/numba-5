if [ ! -d "$HOME/performance/" ]; then
    mkdir "$HOME/performance/";
fi
if [ -d "$HOME/performance/" ]; then
    echo "directory performance in $HOME exists";
fi
free >> $HOME/performance/memory.log


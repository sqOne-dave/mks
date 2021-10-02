#!/usr/bin/bash
current_shell=$(echo $SHELL)
path=$(whereis $current_shell | cut -d':' -f2 | cut -d' ' -f2)
echo '#!'"$path" > $1
chmod u+x $1
vi $1
./$1
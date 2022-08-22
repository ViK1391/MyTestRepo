#!/usr/bin/bash
dir="$1"
if [ -d $dir ]; then
    echo -e "Checking disk usage in $dir\n"
else
    echo -e "$dir is not in a directory!\n"
    exit 101
fi
echo "The heaviest subfolder of $dir is:"
top1 = $(du /home/pystude16 -d 1 2>/dev/null | sort -rn | head -n 2 | tail -n  2)
disk=$(du /home/pystude16 -d 1 2>/dev/null | sort -rn | head -n 2 | tail -n 1)
echo -e "$top...."

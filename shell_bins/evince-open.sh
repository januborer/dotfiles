#!/bin/bash
#请先将pdf文件放入Desktop
evince_open(){
    (nohup evince $1 &) > /dev/null 2>&1
}
root_path="$HOME/Desktop/"
for name in $@;do
    evince_open $root_path${name}.pdf
done

#!/bin/bash    
for f in *.flv
do
    #echo "$f"
    ./ffmpeg -i "$f" -codec copy "${f%.*}.mp4"
    rm "$f"
done

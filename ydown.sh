#!/bin/bash
#simples script de downloads em massa do youtube
#autor: felipe silva (major)
#data: 19/set/2023
#script usa yt-dlp
#home: https://github.com/yt-dlp/yt-dlp
conta=0
for get in $(cat ${1}); do
    yt-dlp --extract-audio --audio-format mp3 $get
    conta=$[ $conta + 1 ]
done
echo "[*]--- Uma ideia codada por felipe silva ---[*]"
echo "[!] Foram baixadas $conta músicas [!]"

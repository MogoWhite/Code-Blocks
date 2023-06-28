---
title: ffmpeg_ytdlp
date: 2023-06-28 11:03
---
yt-dlp -o test.ts --no-part --downloader ffmpeg --hls-use-mpegts 
ffmpeg -i 11th3live.ts -ss 00:02:03.0 -to 00:03:03.0 -codec copy test2.mp4
ffmpeg -ss 00:02:03 -to 00:03:03 -i 11th3live.ts -vf scale=640:360 test2.gif
yt-dlp -o test.m4a --no-part --downloader ffmpeg --hls-use-mpegts 
watch -n 5 'yt-dlp -o "%(title)s.ts" --no-part --downloader ffmpeg --hls-use-mpegts "https://www.showroom-live.com/r/30c4c4460900"'
ffmpeg -i test.mp4 -vf subtitles=test.srt out.mp4
ffmpeg -i  -ar 16000 
./download_video_and_audio.sh n url
yt-dlp -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best' 
ssh mu.geng@133.2.208.2
yt-dlp -o '%(title)s.%(ext)s' 
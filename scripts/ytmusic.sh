#!/bin/bash
yt-dlp -x -f "ba[acodec=opus]" --embed-thumbnail --parse-metadata ":(?P<meta_synopsis>)(?P<meta_description>)(?P<meta_purl>)" --add-metadata -o "~/Music/yt/%(artist)s/%(album)s/%(playlist_index|"")s%(title)s.%(ext)s" --batch-file url.txt &&
fd --full-path /home/doregar/Music/yt -t f -e opus -x mv "{}" "{.}.ogg"


#!/bin/bash
yt-dlp -x --audio-format mp3 -f "ba[acodec=opus]" --embed-thumbnail --parse-metadata ":(?P<meta_synopsis>)(?P<meta_description>)(?P<meta_purl>)(?P<comment>)" --add-metadata -o "~/Music/yt/%(artist)s/%(album)s/%(playlist_index|"")s%(title)s.%(ext)s" --batch-file url.txt


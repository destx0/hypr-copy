URL=$(echo 'Enter YouTube URL' | wofi --dmenu)

if [ -z "$URL" ]; then
    echo "No URL entered. Exiting."
    exit 1
fi


yt-dlp -o '~/Music/%(title)s.%(ext)s' "$URL"
notify-send "Downloaded video from $URL"
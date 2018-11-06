# List

$ .\annie.exe -i -c cookies.txt av22024133

# Download

$ .\annie.exe -c cookies.txt -f default/<number> "URL"

# Download playlist

The -p option downloads an entire playlist instead of a single video.

$ .\annie.exe -i -p -c cookies.txt avxxxx/epxxxx

.\annie.exe -i -c cookies.txt -p avxxxx/epxxxx

.\annie.exe -c cookies.txt -f 112 -p avxxxx/epxxxx

# Change container without reencoding

ffmpeg -i input.flv -codec copy output.mp4

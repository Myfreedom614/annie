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

# Win10通过代理使用annie

实际上不需要 sudo 或 传递环境变量，设置完 HTTP_PROXY 直接使用 annie 即可：

- PowerShell 窗口
    >  $env:http_proxy="socks5://127.0.0.1:8001"
    >  annie [OPTIONS] URL
- CMD 窗口
    >  set "http_proxy=socks5://127.0.0.1:8001"
    >  annie [OPTIONS] URL

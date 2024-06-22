# Two tools:

- BBDown
- Lux

# BBDown:

https://github.com/nilaoda/BBDown

</details>

<details>
<summary>常用命令</summary>  

---
登录：
```
BBDown login    # 通过APP扫描二维码以登录您的WEB账号
```
下载普通视频：
```
BBDown "https://www.bilibili.com/video/BV1qt4y1X7TW"
```
使用TV接口下载(粉丝量大的UP主基本上是无水印片源)：
```
BBDown -tv "https://www.bilibili.com/video/BV1qt4y1X7TW"
```
当分P过多时，默认会隐藏展示全部的分P信息，你可以使用如下命令来显示所有每一个分P。
```
BBDown --show-all "https://www.bilibili.com/video/BV1At41167aj"
```
选择下载某些分P的三种情况：
* 单个分P：10
```
BBDown "https://www.bilibili.com/video/BV1At41167aj?p=10"
BBDown -p 10 "https://www.bilibili.com/video/BV1At41167aj"
```
* 多个分P：1,2,10
```
BBDown -p 1,2,10 "https://www.bilibili.com/video/BV1At41167aj"
```
* 范围分P：1-10
```
BBDown -p 1-10 "https://www.bilibili.com/video/BV1At41167aj"
```
下载番剧全集：
```
BBDown -p ALL "https://www.bilibili.com/bangumi/play/ss33073"
```


# Lux
## Preparation

- Lux https://github.com/iawia002/lux/releases
- FFmpeg https://www.ffmpeg.org/download.html

## List

$ .\annie.exe -i -c cookies.txt av22024133

# Download

$ .\annie.exe -c cookies.txt -f ```default```/```<number>``` "URL"

## Download playlist

The -p option downloads an entire playlist instead of a single video.

$ .\annie.exe -i -p -c cookies.txt avxxxx/epxxxx

.\annie.exe -i -c cookies.txt -p avxxxx/epxxxx

.\annie.exe -c cookies.txt -f 112 -p avxxxx/epxxxx

## Change container without reencoding

ffmpeg -i input.flv -codec copy output.mp4

## Win10通过代理使用annie

实际上不需要 sudo 或 传递环境变量，设置完 HTTP_PROXY 直接使用 annie 即可：

- PowerShell 窗口
    >  $env:http_proxy="socks5://127.0.0.1:8001"
    >  annie [OPTIONS] URL
- CMD 窗口
    >  set "http_proxy=socks5://127.0.0.1:8001"
    >  annie [OPTIONS] URL

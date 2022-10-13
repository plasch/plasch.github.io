---
title: "Charles Proxy via ADB"
date: 2022-05-01T11:45:16+03:00
draft: false
toc: false
comments: false
tags: ["ADB"]
---

#### Enable & disable global HTTP proxy for Charles monitoring

Enable proxy:

```
adb shell settings put global http_proxy 192.168.xx.xxx:8888
```
* IP address of your wireless connection - `ipconfig getifaddr en0`
* IP address for a wired Ethernet connection - `ipconfig getifaddr en1`

Check setting:
```
adb shell settings get global http_proxy
```

To remove the proxy setting enter below ADB command:
```
adb shell settings put global http_proxy :0
```

#### Tips: 
1. Create an alias to make the adb command shorter:
`alias proxy='adb shell settings put global http_proxy 192.168.XX.XXXX:8888'`

2. Script for enable & disable proxy - [proxy.sh](/docs/proxy.sh)
    - Download it
    - Give an executable permission to a script, run command `chmod +x path/to/proxy.sh`
    - Now you can execute it directly: `path/to/proxy.sh`
    - And create an alias for script: `alias proxy='path/to/proxy.sh'`

&nbsp;
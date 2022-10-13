---
title: "Useful ADB commands for testing"
date: 2022-04-24T23:00:52+03:00
draft: false
toc: false
comments: false
tags: ["ADB"]
---

#### 1. Retrieve apk from device
```
adb shell pm list packages | grep example
adb shell pm path com.example.someapp
adb pull /data/app/com.example.someapp.apk
```


#### 2. Shut down device
```
adb shell reboot -p
```

&nbsp;
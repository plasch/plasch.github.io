---
title: "Installing ADB on macOS"
date: 2022-04-09
draft: false
toc: false
tags: ["ADB", "Environment"]
---

Для использования ADB через терминал необходимо:
1. Установить [Android Studio](https://developer.android.com/studio).
2. Установить Java через пакетный менеджер [Homebrew](https://brew.sh/):
    1. `brew search java`
    2. `brew install java11`  
3. После установки запустить команду в терминале:
`java -version`, чтобы проверить корректность установки.
4. Прописать переменные среды в файле `~/.zshrc` для Java:
    ```
    # JAVA
    export JAVA_HOME="/Library/Java/JavaVirtualMachines/openjdk-11.jdk/Contents/Home"
    export PATH=$JAVA_HOME/bin:$PATH
    ```
    и для Android SDK:
    ```
    # ANDROID_SDK
    export ANDROID_HOME=/Users/<user_name>/Library/Android/sdk
    export PATH=$ANDROID_HOME/platform-tools:$PATH
    export PATH=$ANDROID_HOME/tools:$PATH
    export PATH=$ANDROID_HOME/tools/bin:$PATH
    export PATH=$ANDROID_HOME/build-tools/<version>/:$PATH
    ```

5. Выполнить файл .zshrc командой `source ~/.zshrc`

Теперь можно юзать adb напрямую через терминал. Спасибо, пожалуйста, не благодари! 

&nbsp;
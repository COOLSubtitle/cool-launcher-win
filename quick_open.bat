@ECHO OFF

SET path_1="C:\Program Files\Google\Chrome\Application\chrome.exe"
SET path_2="C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
SET path_3=""

SET path=(%path_1% %path_2% %path_3%)

FOR %%i in %path% DO (
    IF EXIST %%i (
        start /max "" %%i  --disable-web-security --disable-site-isolation-trials --user-data-dir=%LOCALAPPDATA%\Google\Chrome-CoolExtension
        GOTO :end
    )
)

ECHO 未找到chrome執行檔。請參照使用說明修改此檔案，謝謝。
ECHO Cannot find the chrome execute file. Please follow the user guide to modify this file, thank you.

:end
# PowerShell
* 利用 $profile 尋找初始讀檔位置
* Get-ExecutionPolicy -List 取得目前執行原則
* Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope LocalMachine 設定原則
* 亂碼解決辦法：https://blog.kkbruce.net/2021/10/solved-console-garbled-code-for-win10-win11.html#.Yagy-cdByHu
# Microsoft.PowerShell_profile.ps1
* $OutputEncoding = [console]::InputEncoding = [console]::OutputEncoding = [Text.UTF8Encoding]::UTF8
* Import-Module 給 -force 強制更新
# Windows Terminal
* windows + ` 快速呼叫
* ctrl + shift + 1 新增 PowerShell tab
* ctrl + shift + w 關閉目前 tab

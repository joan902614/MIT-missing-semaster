# Lab1: shell
## Q
1. 在 /tmp 下新建一個名為 missing 的文件夾
2. 查詢 touch 的手冊，請善用 man 指令
3. 用 touch 在 missing 文件夾中新建一個叫 semester 的文件
4. 將以下內容逐行寫入 semester 文件：
	```
 	#!/bin/sh 
	curl --head --silent https://missing.csail.mit.edu
 	```
	第一行可能有點棘手， # 在Bash中表示註釋，而 ! 即使被雙引號（"）包裹也具有特殊的含義。 單引號（'）則不一樣，此處利用這一點解決輸入問題。更多資訊請參考quoting手冊
5. 嘗試執行這個文件。例如，將該腳本的路徑（./semester）輸入到您的shell中並按Enter。如果程序無法執行，請使用 ls命令來獲取資訊並理解其不能執行的原因
執行 sh 直譯器(interpreter)，並以 semester 作為第一個參數, 例如 sh semester。 為什麼這樣可以但 ./semester 卻不行
6. 查看 chmod 的手冊 (例如，使用 man chmod 命令)
7. 使用 chmod 讓 ./semester 指令可直接執行而不是輸入 sh semester。如何讓你的shell知道該程式應該透過 sh 直譯? 查看shebang來了解其用途
8. 使用 | 和 > ，將 semester 文件輸出的最後更改日期資訊，寫入家目錄下的 last-modified.txt 的文件 
9. 寫一段指令來從 /sys 中獲取筆記型電腦的電量資訊，或者桌上型電腦的CPU溫度。注意：macOS並沒有sysfs，所以mac用戶可以跳過這一題

## A. 
1.
```
cd /tmp
mkdir missing
```
2. ```man touch```
4. ```touch semester```
5.
```
echo '#!/bin/sh' semester
echo 'curl --head --silent https://missing.csail.mit.edu' >> semester
```
5.
```
./semester
ll
```
6. ```sh``` 可直接讀取檔案內的指令
7. ```man chmod```
8.
```
chmod u=rwx semester
ll
./semester
```
9. ```./semester | grep last-modified > ~/last-modified.txt```
10. 電量
```cat /sys/class/power_supply/BAT1/capacity```


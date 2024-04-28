# EEW_Discord_BOT
地震速報(地牛Wake Up!)連動Discord教學

## Discord Bot建立
* 1. 前往[Discord 開發者介面](https://discord.com/developers/applications)
     ![https://github.com/AUSTIN2526/EEW_Discord_BOT/blob/main/image/%E5%9C%96%E7%89%871.png](https://github.com/AUSTIN2526/EEW_Discord_BOT/blob/main/image/%E5%9C%96%E7%89%871.png)
* 2. 點擊`New Application`按鈕建立Discord Bot
     ![https://github.com/AUSTIN2526/EEW_Discord_BOT/blob/main/image/%E5%9C%96%E7%89%872.png](https://github.com/AUSTIN2526/EEW_Discord_BOT/blob/main/image/%E5%9C%96%E7%89%872.png)
* 3. 進入Bot設定頁面點擊`OAuth2`選項
     ![https://github.com/AUSTIN2526/EEW_Discord_BOT/blob/main/image/%E5%9C%96%E7%89%873.png](https://github.com/AUSTIN2526/EEW_Discord_BOT/blob/main/image/%E5%9C%96%E7%89%873.png)
* 4. 找到`OAuth2 URL Generator`欄位選擇`bot`選項
     ![https://github.com/AUSTIN2526/EEW_Discord_BOT/blob/main/image/%E5%9C%96%E7%89%874.png](https://github.com/AUSTIN2526/EEW_Discord_BOT/blob/main/image/%E5%9C%96%E7%89%874.png)
* 5. 找到`BOT PERMISSIONS`欄位選擇`Administrator`設定Bot權限
     ![https://github.com/AUSTIN2526/EEW_Discord_BOT/blob/main/image/%E5%9C%96%E7%89%875.png](https://github.com/AUSTIN2526/EEW_Discord_BOT/blob/main/image/%E5%9C%96%E7%89%875.png)
* 6. 移動到最下方取得bot URL這時點擊URL將能夠將其加入到伺服器中
     ![https://github.com/AUSTIN2526/EEW_Discord_BOT/blob/main/image/%E5%9C%96%E7%89%876.png](https://github.com/AUSTIN2526/EEW_Discord_BOT/blob/main/image/%E5%9C%96%E7%89%876.png)

## Discord Bot後端連接
* 1. 進入Bot設定頁面點擊`Bot`選項
     ![https://github.com/AUSTIN2526/EEW_Discord_BOT/blob/main/image/%E5%9C%96%E7%89%877.png](https://github.com/AUSTIN2526/EEW_Discord_BOT/blob/main/image/%E5%9C%96%E7%89%877.png)
* 2. 找到`Token`欄位點擊`Reset Token`選項
     ![https://github.com/AUSTIN2526/EEW_Discord_BOT/blob/main/image/%E5%9C%96%E7%89%878.png](https://github.com/AUSTIN2526/EEW_Discord_BOT/blob/main/image/%E5%9C%96%E7%89%878.png)
* 3. git clone 此專案(或下載後解壓縮)取得程式碼並修改`DC_BOT_TOKEN`與`CHANNEL_ID`
    * CHANNEL_ID:對伺服器的文字頻道`點擊右鍵`->`複製連接`->https://discord.com/channels/`伺服器ID`/`這一串為CHANNEL_ID`
    * DC_BOT_TOKEN:第二步按下`Reset Token`後取得的Token
      ![https://github.com/AUSTIN2526/EEW_Discord_BOT/blob/main/image/%E5%9C%96%E7%89%879.png](https://github.com/AUSTIN2526/EEW_Discord_BOT/blob/main/image/%E5%9C%96%E7%89%879.png)
* 4. 安裝相關函式庫
```
pip install discord
```

## 連動到地牛Wake Up
* 1. 下載[地牛Wake Up](https://eew.earthquake.tw/)後點擊右上方齒輪
     ![https://github.com/AUSTIN2526/EEW_Discord_BOT/blob/main/image/%E5%9C%96%E7%89%8710.png](https://github.com/AUSTIN2526/EEW_Discord_BOT/blob/main/image/%E5%9C%96%E7%89%8710.png)
* 2. 點擊`其他`找到`連動設定`勾選`收到速報且符合預期後執行程式`，接下來按下`瀏覽`選擇本專案中的`wakeUp.bat`檔案後儲存
    * 記得到`強震即時警報`中調整成個人設定
     ![https://github.com/AUSTIN2526/EEW_Discord_BOT/blob/main/image/%E5%9C%96%E7%89%8711.png](https://github.com/AUSTIN2526/EEW_Discord_BOT/blob/main/image/%E5%9C%96%E7%89%8711.png)
## 工作原理
* 當地牛Wake Up接受到地震警報後，bat檔將會取得其給予的`所在地震度`與`地震抵達秒數`並儲存成`.txt檔案`，而`main.py`會每秒偵測txt檔案的是否存在，若存在則發送訊息到Discord伺服器中並刪除檔案

## 備註
* 本程式只提供一個基礎的連動框架，可以根據自身要求擴展`send_notification`下的程式碼，祝各位平安順利!



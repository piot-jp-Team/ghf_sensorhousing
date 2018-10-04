# ghf_sensorhousing
## 農園センサーユニットハウジング
- arduino pro mini
- MH-Z19B 二酸化炭素センサ または　S-300G 二酸化炭素センサ
- AM2320 温湿度センサー
- リニア照度センサ
- 土壌水分センサ

## 仕組み
iot通信モジュールへRS485で取得データを送ります。
sakura.io + arduino UNO
sakura.ioから、laravel製のグラフで表示します。（作成中）  
![シーケンス](sequence.svg "シーケンス図")  

今後はsigfox,lorawanも利用したいと思います。

## 使用するライブラリ   
(サーバ側)
- nginx, php7
- websocket クライアント　ratchetphp/Pawl
- phpフレームワーク laravel 5.6
- LaravelCharts
- mysql 5.7

(組み込み側)
- Arduino
- modbus/master slave
- mhz19_uart
- Adafruit_Sensor
- Adafruit_AM2320
- sakura.io

## 開発ツール
- 筐体設計 OpenSCAD, FreeCAD
- PCB設計 Eagle6.6
- ファームウエア arduino IDE1.8.5
- エディタはATOM, PlantUML, Netbeans etc.

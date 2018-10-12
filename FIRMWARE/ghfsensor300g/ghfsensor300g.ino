#include <Adafruit_Sensor.h>
#include <Adafruit_AM2320.h>
//#include <MHZ19_uart.h>
#include <ModbusRtu.h>
#include <SoftwareSerial.h>
const int rx_pin = 5;  //Serial rx pin no
const int tx_pin = 4; //Serial tx pin no
SoftwareSerial mySerial(rx_pin, tx_pin); // RX, TX
Adafruit_AM2320 am2320 = Adafruit_AM2320();
//MHZ19_uart mhz19;
int slaveID = 1;
Modbus slave(slaveID, 0, 0); // this is slave ID ,serial pin(0=default), tx_enable_pin(0=none)
int co2ppm = 0;

// data array for modbus network sharing
uint16_t au16data[6]; 
int8_t state = 0;
unsigned long tempus;

void setup() {
  // start communication
  slave.begin( 19200 );
  tempus = millis() + 100;

  mySerial.begin(38400); // ソフトウェアシリアルの初期化
  //mySerial.println("Hello, world?");
  
  am2320.begin();
  //mhz19.begin(rx_pin, tx_pin);
  //mhz19.setAutoCalibration(false);
  //while( mhz19.isWarming() ) {
  //  //Serial.print("MH-Z19 now warming up...  status:");Serial.println(mhz19.getStatus());
  //  delay(1000);
  //  break;  //ステータスがなかなか変わらないため、とりあえず進める
  //}

//自分のアドレス取得
//(D9 D8 D7)
bitWrite( slaveID, 0, !digitalRead( 7 ));
bitWrite( slaveID, 1, !digitalRead( 8 ));
bitWrite( slaveID, 2, !digitalRead( 9 ));
slaveID ++;
slave.setID(slaveID);
//Serial.print("slaveID: "); Serial.println(slaveID);

io_setup(); // I/O settings

}

void loop() {
  state = slave.poll( au16data, 6 );
  if(state!=0)digitalWrite(LED_BUILTIN, HIGH);
  //int temp2=am2320.readTemperature();
  //int hum=am2320.readHumidity();
  uint16_t temp2=am2320.readRegister16(AM2320_REG_TEMP_H); //signed x10(℃)
  uint16_t hum=am2320.readRegister16(AM2320_REG_HUM_H);    //x10(％)
  //int co2ppm = mhz19.getPPM();
  //int temp = mhz19.getTemperature();


  if (mySerial.available()){
    String co2 ;
    String co2num ;
    //co2 = mySerial.readStringUntil('\n');
    co2 = mySerial.readString();
    //Serial.print("rx: "); 
    //Serial.println(co2);
    co2num = co2.substring(0,6);
    co2ppm = co2num.toInt();
  }
  
  //Serial.print("co2: "); 
  //Serial.println(co2ppm);
  //char PPMX[2];
  //sprintf(PPMX,"%X", co2ppm);
  //Serial.print(PPMX);
  
  //Serial.print("temp: "); Serial.println(temp);
  //char TEMPX[2];
  //sprintf(TEMPX,"%X", temp);
  //Serial.print(TEMPX);
  //char HUMX[2];
  //sprintf(HUMX,"%X", hum);
  //Serial.print(HUMX);

  au16data[0]=temp2;
  au16data[1]=hum;
  au16data[2]=analogRead(1); //LUX
  au16data[3]=co2ppm;
  au16data[4]=analogRead(2); //Soil Hum
  au16data[5]=analogRead(0); //Soil PH (option)
/*  
Serial.print("slaveID: "); Serial.println(slaveID);
Serial.print("temp: "); Serial.println(temp);
Serial.print("co2: "); Serial.println(co2ppm);
Serial.print("temp2: "); Serial.println(temp2);
Serial.print("hum: "); Serial.println(hum);
Serial.print("au16data[0]"); Serial.println(au16data[0]);
Serial.print("au16data[1]"); Serial.println(au16data[1]);
Serial.print("au16data[2]"); Serial.println(au16data[2]);
Serial.print("au16data[3]"); Serial.println(au16data[3]);
Serial.print("au16data[4]"); Serial.println(au16data[4]);
Serial.print("au16data[5]"); Serial.println(au16data[5]);
*/
delay(100);
digitalWrite(LED_BUILTIN, LOW);

//リクエスト待機
//自分のアドレス一致したら応答
//ToDo

}

void io_setup() {
  // define i/o
  //pinMode(0, INPUT);
  //pinMode(1, INPUT);
  //pinMode(2, INPUT);
  //pinMode(7, INPUT);
  //pinMode(8, INPUT);
  //pinMode(9, INPUT);

pinMode(LED_BUILTIN, OUTPUT);
digitalWrite(LED_BUILTIN, LOW);

}

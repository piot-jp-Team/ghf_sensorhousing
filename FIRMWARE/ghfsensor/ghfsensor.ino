#include <Adafruit_Sensor.h>
#include <Adafruit_AM2320.h>
#include <MHZ19_uart.h>
#include <ModbusRtu.h>

const int rx_pin = 4;  //Serial rx pin no
const int tx_pin = 5; //Serial tx pin no
Adafruit_AM2320 am2320 = Adafruit_AM2320();
MHZ19_uart mhz19;
int slaveID = 1;
Modbus slave(slaveID, 0, 0); // this is slave ID ,serial pin(0=default), tx_enable_pin(0=none)

// data array for modbus network sharing
uint16_t au16data[6]; 
int8_t state = 0;
unsigned long tempus;

void setup() {
  // start communication
  slave.begin( 19200 );
  tempus = millis() + 100;
  
  am2320.begin();
  mhz19.begin(rx_pin, tx_pin);
  mhz19.setAutoCalibration(false);
  while( mhz19.isWarming() ) {
    Serial.print("MH-Z19 now warming up...  status:");Serial.println(mhz19.getStatus());
    delay(1000);
    break;  //ステータスがなかなか変わらないため、とりあえず進める
  }

//自分のアドレス取得
//(D9 D8 D7)
bitWrite( slaveID, 0, !digitalRead( 9 ));
bitWrite( slaveID, 1, !digitalRead( 8 ));
bitWrite( slaveID, 2, !digitalRead( 7 ));
slaveID ++;
slave.setID(slaveID);
//Serial.print("slaveID: "); Serial.println(slaveID);

io_setup(); // I/O settings

}

void loop() {
  state = slave.poll( au16data, 6 );
  int temp2=am2320.readTemperature();
  int hum=am2320.readHumidity();
  int co2ppm = mhz19.getPPM();
  int temp = mhz19.getTemperature();
  //Serial.print("co2: "); Serial.println(co2ppm);
  char PPMX[2];
  sprintf(PPMX,"%X", co2ppm);
  //Serial.print(PPMX);
  
  //Serial.print("temp: "); Serial.println(temp);
  char TEMPX[2];
  sprintf(TEMPX,"%X", temp);
  //Serial.print(TEMPX);
  char HUMX[2];
  sprintf(HUMX,"%X", hum);
  //Serial.print(HUMX);

  //au16data[0]=temp;
  //au16data[1]=hum;
  au16data[0]=am2320.readRegister16(AM2320_REG_TEMP_H); //signed x10(℃)
  au16data[1]=am2320.readRegister16(AM2320_REG_HUM_H);  //x10(％)
  au16data[2]=analogRead(2); //LUX
  au16data[3]=co2ppm;
  au16data[4]=analogRead(1); //Soil Hum
  au16data[5]=analogRead(0); //Soil PH (option)

  delay(2000);

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
}

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

void setup() {
  Serial.begin(9600);
  
  am2320.begin();
  mhz19.begin(rx_pin, tx_pin);
  mhz19.setAutoCalibration(false);
  while( mhz19.isWarming() ) {
    Serial.print("MH-Z19 now warming up...  status:");Serial.println(mhz19.getStatus());
    delay(1000);
  }

//自分のアドレス取得
//(D9 D8 D7)
bitWrite( slaveID, 0, digitalRead( 9 ));
bitWrite( slaveID, 1, digitalRead( 8 ));
bitWrite( slaveID, 2, digitalRead( 7 ));
slave.setID(slaveID);

}

void loop() {
  
  int temp2=am2320.readTemperature();
  int hum=am2320.readHumidity();
  int co2ppm = mhz19.getPPM();
  int temp = mhz19.getTemperature();
  //Serial.print("co2: "); Serial.println(co2ppm);
  char PPMX[2];
  sprintf(PPMX,"%X", co2ppm);
  Serial.print(PPMX);
  //Serial.print("temp: "); Serial.println(temp);
  char TEMPX[2];
  sprintf(TEMPX,"%X", temp);
  Serial.print(TEMPX);
  char HUMX[2];
  sprintf(HUMX,"%X", hum);
  Serial.print(HUMX);

  delay(5000);
 


//リクエスト待機
//自分のアドレス一致したら応答
//ToDo



}

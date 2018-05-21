#include <Wire.h>
#include "AM2320.h"
#include <MHZ19_uart.h>

const int rx_pin = 4;  //Serial rx pin no
const int tx_pin = 5; //Serial tx pin no

MHZ19_uart mhz19;
AM2320 th;

void setup() {
  Serial.begin(9600);
  Wire.begin();

  mhz19.begin(rx_pin, tx_pin);
  mhz19.setAutoCalibration(false);
  while( mhz19.isWarming() ) {
    Serial.print("MH-Z19 now warming up...  status:");Serial.println(mhz19.getStatus());
    delay(1000);
  }

//自分のアドレス取得
//ToDo


}

void loop() {
  
  switch(th.Read()) {
    case 2:
      Serial.println("CRC failed");
      break;
    case 1:
      Serial.println("Sensor offline");
      break;
    case 0:
      Serial.print("humidity: ");
      Serial.print(th.h);
      Serial.print("%, temperature: ");
      Serial.print(th.t);
      Serial.println("*C");
      break;
  }

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

  delay(5000);
 


//リクエスト待機
//自分のアドレス一致したら応答
//ToDo



}

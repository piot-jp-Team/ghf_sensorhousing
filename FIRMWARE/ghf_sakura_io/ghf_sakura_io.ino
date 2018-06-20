#include <SakuraIO.h>
#include <ModbusRtu.h>


// Sakura IO
SakuraIO_I2C sakuraio;

// data array for modbus network sharing
uint16_t au16data1[16];
uint16_t au16data2[16];
uint16_t au16data3[16];
uint16_t au16data4[16];
uint16_t au16data5[16];
uint16_t au16data6[16];
uint16_t au16data7[16];
uint16_t au16data8[16];
uint8_t u8state;
Modbus master(0,0,0); // this is master and RS-232 or USB-FTDI
/**
 * This is an structe which contains a query to an slave device
 */
modbus_t telegram;
unsigned long u32wait;


void setup() {

  // オンラインになるまで待つ
  while ((sakuraio.getConnectionStatus() & 0x80) != 0x80) {
    delay(1000);
  }

  master.begin( 19200 ); // baud-rate at 19200
  master.setTimeOut( 2000 ); // if there is no answer in 2000 ms, roll over
  u32wait = millis() + 1000;
  u8state = 0; 


}

void loop() {

  static uint32_t i;
  uint8_t j, result;
  uint16_t data[6];
  uint8_t ret;
  
  i++;

  
  // 受信キューの状態を取得
  uint8_t rxAvailable;
  uint8_t rxQueued;
  uint8_t queued;
  sakuraio.getRxQueueLength(&rxAvailable, &rxQueued);

  // 受信キューにたまっているメッセージの数だけ繰り返す
  for (uint8_t i = 0; i < rxQueued; i++) {
    uint8_t channel;
    uint8_t type;
    uint8_t values[8];
    int64_t offset;

    // キューからのメッセージを取り出しに成功したら以下を実行
    uint8_t ret = sakuraio.dequeueRx(&channel, &type, values,
                                     &offset);
    if (ret == CMD_ERROR_NONE) {
/*
      Serial.print("channel: ");
      Serial.println(channel);
      Serial.print("type: ");
      Serial.println((char)type);
      Serial.print("value: ");
*/
      //0x03 - Read Holding Registers (channel:"1", type:i ,value:)
      if (type == 'i') {
        if (channel == '1') {

          //ToDo  Tx Queue

        
        }
      }

    } else {
      //sakuraio.dequeueRx ERROR
      delay(5000);
    }
  }

  switch( u8state ) {
  case 0: 
    if (millis() > u32wait) u8state++; // wait state
    break;
  case 1: 
    telegram.u8id = 1; // slave address
    telegram.u8fct = 3; // function code (this one is registers read)
    telegram.u16RegAdd = 1; // start address in slave
    telegram.u16CoilsNo = 4; // number of elements (coils or registers) to read
    telegram.au16reg = au16data1; // pointer to a memory array in the Arduino

    master.query( telegram ); // send query (only once)
    u8state++;
    break;
  case 2:
    master.poll(); // check incoming messages
    if (master.getState() == COM_IDLE) {
      u8state = 0;
      u32wait = millis() + 100; 
    }
    break;
  }


  if(queued >= 7){
    ret = sakuraio.clearTx();
    //Serial.print("Clear ");
    //Serial.println(ret);
  }else if(queued >= 1){
    if(requestFlg == 1){
      sakuraio.enqueueTx(0,(uint32_t)au16data1[0]);
      sakuraio.enqueueTx(1,(uint32_t)au16data1[1]);
      sakuraio.enqueueTx(2,(uint32_t)au16data1[2]);
      sakuraio.enqueueTx(0,(uint32_t)au16data1[3]);
      sakuraio.enqueueTx(1,(uint32_t)au16data1[4]);
      sakuraio.enqueueTx(2,(uint32_t)au16data1[5]);
      sakuraio.send();
      //Serial.print("Send ");
      //Serial.println(ret);
      requestFlg = 0;
    }
  }

}



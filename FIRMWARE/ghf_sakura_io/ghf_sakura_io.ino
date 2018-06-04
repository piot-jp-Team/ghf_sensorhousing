
#include <SakuraIO.h>

// Sakura IO
SakuraIO_I2C sakuraio;

void setup() {

  // オンラインになるまで待つ
  while ((sakuraio.getConnectionStatus() & 0x80) != 0x80) {
    delay(1000);
  }


}

void loop() {

  static uint32_t i;
  uint8_t j, result;
  uint16_t data[6];
  
  i++;

  
  // 受信キューの状態を取得
  uint8_t rxAvailable;
  uint8_t rxQueued;
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
        int32_t value = 0;
        memcpy(&value, &values, sizeof(int32_t));

      }

    } else {
      //sakuraio.dequeueRx ERROR
      delay(5000);
    }
  }


}



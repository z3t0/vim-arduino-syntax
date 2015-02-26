" Vim syntax file
" Language:    Arduino
" Maintainer:  Rafi Khan <zetoslab@gmail.com>
" Last Change: 25 February 2015

" Rafi Khan Copyright (c) 2015

" Syntax highlighting like in the Arduino IDE 
" From version: 1:1.0.5+dfsg2-2



" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Read the C syntax to start with
if version < 600
  so <sfile>:p:h/cpp.vim
else
  runtime! syntax/cpp.vim
endif

"/usr/share/arduino/lib/keywords.txt

	syn keyword arduinoConstant HIGH LOW INPUT INPUT_PULLUP OUTPUT DEC BIN HEX OCT PI
	syn keyword arduinoConstant HALF_PI TWO_PI LSBFIRST MSBFIRST CHANGE FALLING RISING DEFAULT EXTERNAL INTERNAL
	syn keyword arduinoConstant INTERNAL1V1 INTERNAL2V56
	syn keyword arduinoType boolean break byte case char class const continue default do
	syn keyword arduinoType double else false float for if int long new null
	syn keyword arduinoType private protected public register return short signed static String switch
	syn keyword arduinoType this throw try true unsigned void while word boolean byte
	syn keyword arduinoType char float int long word
	syn keyword arduinoFunc abs acos asin atan atan2 ceil constrain cos degrees exp
	syn keyword arduinoFunc floor log map max min radians random randomSeed round sin
	syn keyword arduinoFunc sq sqrt tan bitRead bitWrite bitSet bitClear bit highByte lowByte
	syn keyword arduinoFunc analogReference analogRead analogWrite attachInterrupt detachInterrupt delay delayMicroseconds digitalWrite digitalRead interrupts
	syn keyword arduinoFunc millis micros noInterrupts noTone pinMode pulseIn shiftIn shiftOut tone Serial
	syn keyword arduinoFunc Serial1 Serial2 Serial3 begin end peek read print println available
	syn keyword arduinoFunc flush setTimeout find findUntil parseInt parseFloat readBytes readBytesUntil readString readStringUntil
	syn keyword arduinoFunc Keyboard Mouse press release releaseAll accept click move isPressed setup
	syn keyword arduinoFunc loop
	syn keyword arduinoOperator += + [] = & | , // ?: {}
	syn keyword arduinoOperator -- / /* . == < <= ++ != <<
	syn keyword arduinoOperator < <= && ! || - % * () >>
	syn keyword arduinoOperator ; -="}}}
"/usr/share/arduino/libraries/EEPROM/keywords.txt

	syn keyword arduinoLibraryConstant EEPROM"}}}
"/usr/share/arduino/libraries/Wire/keywords.txt

	syn keyword arduinoLibraryFunc begin beginTransmission endTransmission requestFrom send receive onReceive onRequest Wire"}}}
"/usr/share/arduino/libraries/WiFi/keywords.txt

	syn keyword arduinoLibraryConstant SSID BSSID RSSI
	syn keyword arduinoLibraryFunc WiFi Client Server status connect write available config setDNS read
	syn keyword arduinoLibraryFunc flush stop connected begin disconnect macAddress localIP subnetMask gatewayIP encryptionType
	syn keyword arduinoLibraryFunc getResult getSocket WiFiClient WiFiServer WiFiUDP beginPacket endPacket parsePacket remoteIP remotePort"}}}
"/usr/share/arduino/libraries/Servo/keywords.txt

	syn keyword arduinoLibraryFunc Servo attach detach write read attached writeMicroseconds readMicroseconds"}}}
"/usr/share/arduino/libraries/Esplora/keywords.txt

	syn keyword arduinoLibraryConstant JOYSTICK_BASE MAX_CHANNELS CH_SWITCH_1 CH_SWITCH_2 CH_SWITCH_3 CH_SWITCH_4 CH_SLIDER CH_LIGHT CH_TEMPERATURE CH_MIC
	syn keyword arduinoLibraryConstant CH_JOYSTICK_SW CH_JOYSTICK_X CH_JOYSTICK_Y SWITCH_1 SWITCH_2 SWITCH_3 SWITCH_4 SWITCH_DOWN SWITCH_LEFT SWITCH_UP
	syn keyword arduinoLibraryConstant SWITCH_RIGHT JOYSTICK_DOWN JOYSTICK_LEFT JOYSTICK_UP PRESSED RELEASED DEGREES_C DEGREES_F X_AXIS Y_AXIS
	syn keyword arduinoLibraryConstant Z_AXIS
	syn keyword arduinoLibraryFunc Esplora begin readSlider readLightSensor readTemperature readMicrophone readJoystickSwitch readJoystickButton readJoystickX readJoystickY
	syn keyword arduinoLibraryFunc readAccelerometer readButton writeRGB writeRed writeGreen writeBlue readRed readGreen readBlue tone
	syn keyword arduinoLibraryFunc noTone"}}}
"/usr/share/arduino/libraries/Stepper/keywords.txt

	syn keyword arduinoLibraryFunc Stepper step setSpeed version direction speed"}}}
"/usr/share/arduino/libraries/SD/keywords.txt

	syn keyword arduinoLibraryConstant SD FILE_READ FILE_WRITE
	syn keyword arduinoLibraryFunc File begin exists mkdir remove rmdir open close seek position
	syn keyword arduinoLibraryFunc size"}}}
"/usr/share/arduino/libraries/GSM/keywords.txt

	syn keyword arduinoLibraryConstant GSM GSM_SMS GPRS GSMPIN ERROR IDLE CONNECTING GSM_READY GPRS_READY TRANSPARENT_CONNECTED
	syn keyword arduinoLibraryConstant IDLE_CALL CALLING RECEIVINGCALL TALKING GSM_MODE_UNDEFINED GSM_MODE_EGSM GSM_MODE_DCS GSM_MODE_PCS GSM_MODE_EGSM_DCS GSM_MODE_GSM850_PCS
	syn keyword arduinoLibraryConstant GSM_MODE_GSM850_EGSM_DCS_PCS
	syn keyword arduinoLibraryFunc GSMVoiceCall GSMClient GSMServer GSMModem GSMScanner  begin shutdown gatVoiceCallStatus ready
	syn keyword arduinoLibraryFunc voiceCall answerCall hangCall retrieveCallingNumber beginSMS endSMS remoteNumber attachGPRS begnWrite endWrite
	syn keyword arduinoLibraryFunc getIMEI getCurrentCarrier getSignalStrength readNetworks isPIN checkPIN checkPUK changePIN switchPIN checkReg
	syn keyword arduinoLibraryFunc getPINUsed setPINUsed getBand setBand getvoiceCallStatus"}}}
"/usr/share/arduino/libraries/SPI/keywords.txt

	syn keyword arduinoLibraryConstant SPI SPI_CLOCK_DIV4 SPI_CLOCK_DIV16 SPI_CLOCK_DIV64 SPI_CLOCK_DIV128 SPI_CLOCK_DIV2 SPI_CLOCK_DIV8 SPI_CLOCK_DIV32 SPI_CLOCK_DIV64 SPI_MODE0
	syn keyword arduinoLibraryConstant SPI_MODE1 SPI_MODE2 SPI_MODE3
	syn keyword arduinoLibraryFunc begin end transfer setBitOrder setDataMode setClockDivider"}}}
"/usr/share/arduino/libraries/SoftwareSerial/keywords.txt

	syn keyword arduinoLibraryFunc NewSoftSerial begin end read available isListening overflow flush listen"}}}
"/usr/share/arduino/libraries/Ethernet/keywords.txt

	syn keyword arduinoLibraryFunc Ethernet EthernetClient EthernetServer IPAddress status connect write available read peek
	syn keyword arduinoLibraryFunc flush stop connected begin beginPacket endPacket parsePacket remoteIP remotePort"}}}
"/usr/share/arduino/libraries/Firmata/keywords.txt

	syn keyword arduinoLibraryConstant MAX_DATA_BYTES DIGITAL_MESSAGE ANALOG_MESSAGE REPORT_ANALOG REPORT_DIGITAL REPORT_VERSION SET_PIN_MODE SYSTEM_RESET START_SYSEX END_SYSEX
	syn keyword arduinoLibraryConstant PWM TOTAL_ANALOG_PINS TOTAL_DIGITAL_PINS TOTAL_PORTS ANALOG_PORT
	syn keyword arduinoLibraryFunc Firmata callbackFunction systemResetCallbackFunction stringCallbackFunction sysexCallbackFunction begin begin printVersion blinkVersion printFirmwareVersion
	syn keyword arduinoLibraryFunc setFirmwareVersion setFirmwareNameAndVersion available processInput sendAnalog sendDigital sendDigitalPortPair sendDigitalPort sendString sendString
	syn keyword arduinoLibraryFunc sendSysex attach detach flush"}}}
"/usr/share/arduino/libraries/TFT/keywords.txt

	syn keyword arduinoLibraryConstant TFT
	syn keyword arduinoLibraryFunc EsploraTFT"}}}
"/usr/share/arduino/libraries/TFT/utility/keywords.txt

	syn keyword arduinoLibraryFunc Adafruit_GFX Adafruit_ST7735 PImage drawPixel invertDisplay drawLine drawFastVLine drawFastHLine drawRect fillRect
	syn keyword arduinoLibraryFunc fillScreen drawCircle drawCircleHelper fillCircle fillCircleHelper drawTriangle fillTriangle drawRoundRect fillRoundRect drawBitmap
	syn keyword arduinoLibraryFunc drawChar setCursor setTextColor setTextSize setTextWrap height width setRotation getRotation newColor
	syn keyword arduinoLibraryFunc background fill noFill stroke noStroke text textWrap textSize circle point
	syn keyword arduinoLibraryFunc quad rect triangle loadImage image draw isValid"}}}
"/usr/share/arduino/libraries/LiquidCrystal/keywords.txt

	syn keyword arduinoLibraryFunc LiquidCrystal begin clear home print setCursor cursor noCursor blink noBlink
	syn keyword arduinoLibraryFunc display noDisplay autoscroll noAutoscroll leftToRight rightToLeft scrollDisplayLeft scrollDisplayRight createChar"}}}



hi def link arduinoType Type
hi def link arduinoConstant Constant
hi def link arduinoStdFunc Function
hi def link arduinoFunc Function
hi def link arduinoMethod Function
hi def link arduinoIdentifier Identifier
hi def link arduinoOperator Operator

hi def link arduinoLibraryType Type
hi def link arduinoLibraryConstant Constant
hi def link arduinoLibraryStdFunc Function
hi def link arduinoLibraryFunc Function
hi def link arduinoLibraryMethod Function
hi def link arduinoLibraryIdentifier Identifier
hi def link arduinoLibraryOperator Operator

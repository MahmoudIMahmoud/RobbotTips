#[Android]Try to write non-english charachters into text input box in appium Fails!
###Solution:
Use the following desired caps:<br>
```java
desired = {
  app: '/path/to/app',
  deviceName: 'Android Emulator',
  deviceVersion: '4.4',
  platformName: 'Android',
  unicodeKeyboard: true,
  resetKeyboard: true
};
```
And for robot use:
```Javascript
  Open Application unicodeKeyboard=True <rest of parameters>
```
<br>***Yes*** it is just a capability setting ***unicodeKeyboard=True***.<br>
[Source](http://appium.readthedocs.io/en/stable/en/writing-running-appium/unicode/)

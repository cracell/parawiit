#import <ruby.h>

#import <IOBluetooth/objc/IOBluetoothDevice.h>
// #import <IOBluetooth/objc/IOBluetoothDevice.h>
// #import <IOBluetooth/objc/IOBluetoothL2CAPChannel.h>
#import <IOBluetooth/objc/IOBluetoothDeviceInquiry.h>
// #import <IOBluetooth/objc/IOBluetoothHostController.h>



VALUE rbt_scan(VALUE);

@interface BluetoothDeviceScanner : NSObject {
  IOBluetoothDeviceInquiry *   _inquiry;
  BOOL                         _busy;
  VALUE                        _devices;
}

- (void) stopSearch;
- (IOReturn) startSearch;
- (VALUE) devices;
@end
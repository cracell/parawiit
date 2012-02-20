#import <IOBluetooth/IOBluetoothUserLib.h>
#import <IOBluetooth/objc/IOBluetoothDevice.h>
#import <IOBluetooth/objc/IOBluetoothDeviceInquiry.h>
#import <IOBluetooth/objc/IOBluetoothHostController.h>

#import <ruby.h>


@interface BluetoothDeviceScanner : NSObject {
  IOBluetoothDeviceInquirt *   _inquiry;
  BOOL                         _busy;
  VALUE                        _devices;
}

- (void) stopSearch;
- (IOReturn) startSearch;
- (VALUE) devices;
@end
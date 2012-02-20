#import "ruby_bluetooth.h"

VALUE rbt_mBluetooth = Qnil;

VALUE rbt_cBluetoothDevice = Qnil;

void Init_parawiit() {
  
  rb_define_singleton_method(rbt_mBluetooth, "scan", rbt_scan, 0);
  
}
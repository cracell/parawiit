//#import "parawiit.h"
#import <ruby.h>

//#import <IOBluetooth/IOBluetoothUserLib.h>

/* our new native method: it just returns
 * the string "bonjour!" */
static VALUE hola_bonjour(VALUE self) {
  return rb_str_new2("bonjour!");
}

/* ruby calls this to load the extension */
void Init_parawiit(void) {
  /* assume we haven't yet defined Hola */
  VALUE klass = rb_define_class("Parawiit",
    rb_cObject);

  /* the hola_bonjour function can be called
   * from ruby as "Hola.bonjour" */

   rb_define_singleton_method(klass,
     "bonjour", hola_bonjour, 0);
}
// 
// @interface BluetoothDeviceScanner : NSObject {
// 
// }
// 
// @end

// #import "parawiit.h"
// 
// VALUE rbt_mBluetooth = Qnil;
// 
// VALUE rbt_cBluetoothDevice = Qnil;
// 
// // void Init_parawiit() {
// //   
// //   rb_define_singleton_method(rbt_mBluetooth, "scan", rbt_scan, 0);
// //   
// // }
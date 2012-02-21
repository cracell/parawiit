#import "parawiit.h"

VALUE rbt_mParawiit = Qnil;

VALUE rbt_cBluetoothDevice = Qnil;

//This method is just here to test
static VALUE parawiit_bonjour(VALUE self) {
  return rb_str_new2("bonjour!");
}

void Init_parawiit() {
  rbt_mParawiit = rb_define_module("Parawiit");
  
  //   /* assume we haven't yet defined Parawiit */
    // VALUE klass = rb_define_class("Parawiit",
    //   rb_cObject);
  
  rb_define_singleton_method(rbt_mParawiit, "scan", rbt_scan, 0);
  rb_define_singleton_method(rbt_mParawiit, "bonjour", parawiit_bonjour, 0);
  
}
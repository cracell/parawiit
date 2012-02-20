require 'mkmf'

dir_config 'wiimote'

if RUBY_PLATFORM =~ /darwin/ then
  $LDFLAGS << ' -framework IOBluetooth'

  create_makefile 'wiimote', 'macosx'

  open 'Makefile', 'a' do |io|
    io.write "\n.m.o:\n\t#{COMPILE_C}\n\n"
  end
end


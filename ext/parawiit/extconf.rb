require 'mkmf'

if RUBY_PLATFORM =~ /darwin/ then
  $LDFLAGS << ' -framework IOBluetooth'

  create_makefile 'parawiit/parawiit'

  open 'Makefile', 'a' do |io|
    io.write "\n.m.o:\n\t#{COMPILE_C}\n\n"
  end
end


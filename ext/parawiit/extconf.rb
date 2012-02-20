require 'mkmf'

if RUBY_PLATFORM =~ /darwin/ then
  $LDFLAGS << ' -framework IOBluetooth'

  create_makefile 'parawiit/parawiit', 'macosx'

  open 'Makefile', 'a' do |io|
    io.write "\n.m.o:\n\t#{COMPILE_C}\n\n"
  end
end


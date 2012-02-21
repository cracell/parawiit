class Parawiit::Device
  # The address of this device in XX-XX-XX-XX-XX-XX format
  attr_accessor :address
  
  # Sets the name of this device
  attr_writer :name
  
  # Creates a new Device with an +address+ and an optional +name+
  def initialize address, name = nil
    @address = address
    @name = name
    
    @pair_error = nil
    @pair_confirmation_callback = nil
  end
  
  # The bytes of this address
  def address_bytes
    @address.split('-').map {|c| c.to_i(16)}.pack 'C*'
  end
  
  # The name of this Device.  It will be automatically looked up if not
  # already known.  
  def name
    return @name if @name

    @name = request_name

    return '(unknown)' unless @name

    @name
  end
  
  def to_s # :nodoc:
    "#{name} at #{address}"
  end
end
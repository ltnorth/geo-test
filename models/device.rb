# require 'nokogiri'

class Device

  def self.load_data
    Nokogiri::XML(open('data/mini-schema.xml'))
  end

  def self.note device_name
    data = self.load_data
    devices = data.search('device')
    devices.each do |device|
      device_info = device.element_children
      return device_info[2] if device_info[0].text == device_name
    end
  end
end
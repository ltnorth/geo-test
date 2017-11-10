# require 'nokogiri'

class Device

  def self.load_data
    Nokogiri::XML(open('data/mini-schema.xml'))
  end

  def self.note device_num
    data = self.load_data
    index = device_num.to_i
    notes = data.search('notes')
    notes[index]
  end
end
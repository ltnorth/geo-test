require 'httparty'

class GeoApiCall
  include HTTParty
  base_uri 'localhost:9292'

  def one_note device_name
    xml_note = self.class.get("/#{device_name}").parsed_response
  end
end
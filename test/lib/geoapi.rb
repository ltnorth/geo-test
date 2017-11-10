require 'httparty'

class GeoApiCall
  include HTTParty
  base_uri 'localhost:9292'

  def one_note note_index
    xml_note = self.class.get("/#{note_index}").parsed_response
  end
end
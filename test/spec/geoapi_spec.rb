require_relative '../lib/geoapi'

describe GeoApiCall do

  before(:all) do
    @devices = GeoApiCall.new
  end
  
  describe "Devices" do
    
    context "When testing the database of all notes of devices" do

      it "should return one note when requesting only one note" do
        expect(@devices.one_note(1)).to eql('<notes>Legacy Legato CT transmitter</notes>')
      end
    end
  end
end
require_relative '../lib/geoapi'

describe GeoApiCall do

  before(:all) do
    @devices = GeoApiCall.new
  end

  describe "Devices" do
    
    context "When testing the database of all notes of devices" do

      it "should return one note when requesting only one note" do
        expect(@devices.one_note("ct").values[0]).to eql('Legacy Legato CT transmitter')
      end
    end
  end
end
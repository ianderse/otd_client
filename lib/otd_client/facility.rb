module OTDClient
  class Facility
    attr_reader :name, :services, :phone, :address

    def initialize(data)
      @name = data["facility"]["name1"]
      @services = data["facility"]["services"]
      @phone    = data["facility"]["phone"]
      @address  = [data["facility"]["location_street1"], data["facility"]["location_street2"], data["facility"]["location_city"], data["facility"]["location_state"], data["facility"]["location_zip"]]
    end
  end
end

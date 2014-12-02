require 'faraday'
require 'json'
require_relative 'facility'

module OTDClient
  class Client
    attr_reader :connection

    def initialize(host)
      @connection = Faraday.new(:url => host)
    end

    def find_facility(id)
      data = JSON.parse( @connection.get("/api/v1/facilities/#{id}.json").body )
      Facility.new(data)
    end
  end
end

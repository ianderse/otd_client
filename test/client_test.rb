require 'minitest/autorun'
require 'minitest/pride'
require './lib/otd_client/client'

class ClientTest < Minitest::Test
  def test_it_exists
    assert OTDClient::Client
  end

  def test_it_finds_a_facilities_name
    client = OTDClient::Client.new('http://localhost:3000')
    facility = client.find_facility(1)
    assert_equal "Volunteers of America of Alaska", facility.name
  end

  def test_it_finds_a_facilities_services
    client = OTDClient::Client.new('http://localhost:3000')
    facility = client.find_facility(1)
    assert_equal "Children", facility.services[0..7]
  end

  def test_it_finds_a_facilities_phone_number
    client = OTDClient::Client.new('http://localhost:3000')
    facility = client.find_facility(1)
    assert_equal "907-279-9634", facility.phone
  end

  def test_it_finds_a_facilities_address
    client = OTDClient::Client.new('http://localhost:3000')
    facility = client.find_facility(1)
    assert_equal ["509 West Third Avenue", "Suite 103", "Anchorage", "AK", "99501"], facility.address
  end
end

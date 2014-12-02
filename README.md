# OTDClient

Gem for interacting with Open Therapist Directory

## Installation

Add this line to your application's Gemfile:

    gem 'otd_client'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install otd_client

## Usage

example when running a copy of Open Therapist Directory locally:

		client = OTDClient::Client.new('http://localhost:3000')
		facility = client.find_facility(1) #'1' being the facility ID

You can then run various commands to get information for the facility:

		facility.name #returns facility name
		facility.services #returns services provided by the facility
		facility.address #returns an array of the address of the facility
		facility.phone #returns phone number of the facility

require 'spec_helper'
require './lib/exchange'

describe Currency do
	before(:each) do
		json = JSON.parse(File.read('./spec/fixtures/currency_list.json'))
		currency, currency_dest = json['currency_list'].sample(2)
		quantity = rand(1..1000)

		@value = Currency::exchange(currency, currency_dest, quantity)
	end

	it 'Exchange be a number' do
		expect(@value.is_a? Numeric).to eql(true)
	end

	it 'Exchange not be 0-' do
		expect(@value != 0).to eql(true)
	end
end
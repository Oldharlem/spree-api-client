require 'spec_helper'

describe Spree::API::Client::Addresses do
  # vcr_options = { :cassette_name =>  "addresss" }
  describe 'address', :vcr do
    it 'should load address' do
      client = Spree::API::Client.new('http://localhost:4000/store/api', 'b56019f04b61a50553ee323f5ab68c6b435871971e79c987')
      address = client.address('R123456789', 2)
      address.should be_a(Hashie::Mash)
    end
  end

  describe 'update_address', :vcr do
    it 'should update address' do
      client = Spree::API::Client.new('http://localhost:4000/store/api', 'b56019f04b61a50553ee323f5ab68c6b435871971e79c987')
      address = client.update_address('R123456789', 2, address: {city: 'Abernathy City'})
      address.should be_a(Hashie::Mash)
      address.city eq 'Abernathy City'
    end
  end
end

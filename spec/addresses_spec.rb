require 'spec_helper'

describe Spree::API::Client::Addresses do
  vcr_options = { :cassette_name =>  "addresss" }
  describe 'address', vcr: vcr_options do
    it 'should load address' do
      pending 'must be accessed via checkout or order'
      client = Spree::API::Client.new('http://localhost:4000/store/api', 'b56019f04b61a50553ee323f5ab68c6b435871971e79c987')
      address = client.address(1)
      address.should be_a(Hashie::Mash)
    end
  end
end

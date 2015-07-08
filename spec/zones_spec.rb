require 'spec_helper'

describe Spree::API::Client::Zones do
  vcr_options = { :cassette_name =>  "zones", :record => :new_episodes }
  describe 'zones', vcr: vcr_options do
    it 'should load zones' do
      client = Spree::API::Client.new('http://localhost:4000/store/api', 'b56019f04b61a50553ee323f5ab68c6b435871971e79c987')
      zones = client.zones
      zones.should be_a(Array)
    end
  end
end

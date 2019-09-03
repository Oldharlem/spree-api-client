require 'spec_helper'

describe Spree::API::Client::Shipments do
  describe 'shipment_ready', :vcr do
    it 'should set a shipment to ready' do
      pending "spree sample data is not happy with this request"
      client = Spree::API::Client.new('http://localhost:4000/store/api', 'b56019f04b61a50553ee323f5ab68c6b435871971e79c987')
      shipment = client.shipment_ready(2)
      shipment.should be_a(Hashie::Mash)
    end

    it 'should set a shipment to ship' do
      pending "spree sample data is not happy with this request"
      client = Spree::API::Client.new('http://localhost:4000/store/api', 'b56019f04b61a50553ee323f5ab68c6b435871971e79c987')
      shipment = client.ship_shipment(2)
      shipment.should be_a(Hashie::Mash)
    end
  end
end

require 'spec_helper'

describe Spree::API::Client::Orders do
  vcr_options = { :cassette_name =>  "orders" }
  describe 'orders', vcr: vcr_options do
    it 'should load orders' do
      client = Spree::API::Client.new('http://localhost:4000/store/api', 'b56019f04b61a50553ee323f5ab68c6b435871971e79c987')
      orders = client.orders
      orders.should be_a(Array)
    end
  end
end
require 'spec_helper'

describe Spree::API::Client::StockItems do
  vcr_options = { :cassette_name =>  "stock_items" }
  describe 'stock_items', vcr: vcr_options do
    it 'should load stock_items' do
      client = Spree::API::Client.new('http://localhost:4000/store/api', 'b56019f04b61a50553ee323f5ab68c6b435871971e79c987')
      stock_items = client.stock_items(1)
      stock_items.stock_items.should be_a(Array)
    end
  end
end

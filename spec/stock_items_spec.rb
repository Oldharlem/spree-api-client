require 'spec_helper'

describe Spree::API::Client::StockItems do
  use_vcr_cassette "stock_items", :record => :new_episodes
  describe 'stock_items' do
    it 'should load stock_items' do
      client = Spree::API::Client.new('http://localhost:4000/api', 'a8f2f3143f4d72f4f358eaaa1b73c660e314c4d5f55a404f')
      stock_items = client.stock_items(1)
      stock_items.should be_a(Array)
    end
  end
end
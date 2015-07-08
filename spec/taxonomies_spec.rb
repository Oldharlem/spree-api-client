require 'spec_helper'

describe Spree::API::Client::Taxonomies do
  vcr_options = { :cassette_name =>  "taxonomies", :record => :new_episodes }
  describe 'taxonomies', vcr: vcr_options do
    it 'should load taxonomies' do
      client = Spree::API::Client.new('http://localhost:4000/store/api', 'b56019f04b61a50553ee323f5ab68c6b435871971e79c987')
      taxonomies = client.taxonomies
      taxonomies.should be_a(Array)
    end
  end
end

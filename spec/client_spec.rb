require 'spec_helper'

describe Spree::API::Client do
  describe ".new" do
    it "is a Spree::API::Client" do
      Spree::API::Client.new('http://example.com/api', 'randomtokenstring').should be_a(Spree::API::Client)
    end
  end

  describe 'api_endpoint' do
    it 'should be stored' do
      client = Spree::API::Client.new('http://example.com/api', 'randomtokenstring')
      client.api_endpoint.should eql('http://example.com/api')
    end
  end

  describe 'api_token' do
    it 'should be stored' do
      client = Spree::API::Client.new('http://example.com/api', 'randomtokenstring')
      client.api_token.should eql('randomtokenstring')
    end
  end

  describe 'request' do
    vcr_options = { :cassette_name =>  "request" }
    it 'should load stuff from the api', vcr: vcr_options do
      client = Spree::API::Client.new('http://localhost:4000/store/api', 'randomtokenstring')
      response = client.request(:get, 'products')
      response.should be_a(Faraday::Response)
    end
  end
end
p 'VCR'
require 'vcr'

VCR.configure do |c|
  c.cassette_library_dir = 'fixtures/cassette_library'
  c.hook_into :webmock
  c.ignore_localhost = false
  c.configure_rspec_metadata!
  c.default_cassette_options = { :record => :none }
end
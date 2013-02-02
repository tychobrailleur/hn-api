$:.unshift File.join(File.dirname(__FILE__), '..', 'lib')

require 'hn-api'
require 'rspec/mocks'
require 'rspec/expectations'
require 'webmock/rspec'


# Load file at path to represent a fixture.
def fixture(path)
  File.new(File.join(File.dirname(__FILE__), "fixtures", path))
end

# Generated by cucumber-sinatra. (2014-11-12 14:21:56 +0000)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'app/server.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = Test

class TestWorld
  include Capybara::DSL
  include RSpec::Mocks
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  TestWorld.new
end
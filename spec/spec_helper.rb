require 'rspec'
require 'rspec/core'
require 'watir'
require 'page-object'

RSpec.configure do |config|
  config.include PageObject::PageFactory
  config.before :all do
    @browser = Watir::Browser.new :chrome
  end
  config.after :all do
    @browser.close
  end
end


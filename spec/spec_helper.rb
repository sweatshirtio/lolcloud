require 'bundler/setup'
Bundler.require

require 'lolcloud'
require 'pry'

Dir[File.dirname(__FILE__) + "/support/**/*.rb"].each {|f| require f}

RSpec.configure do |config|
end

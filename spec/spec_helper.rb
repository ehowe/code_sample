Bundler.require(:test)

require File.expand_path("../../lib/award", __FILE__)
Dir[File.expand_path("../support/*.rb", __FILE__)].each{|f| require(f)}

RSpec.configure do |config|
  order = ENV["RANDOM"] == 'true' ? :random : :ordered
  config.order = order
end

module UpdateHelper
  def update_quality(awards)
    awards.each(&:update!)
  end
end

RSpec.configure do |config|
  config.include(UpdateHelper)
end

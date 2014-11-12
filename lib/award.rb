class Award
  %w(blue_first blue_compare blue_distinction_plus default blue_star).each { |f| require f }

  attr_accessor :name, :expires_in, :quality

  Map = {
    'Blue Compare'          => ::BlueCompare,
    'Blue Distinction Plus' => ::BlueDistinctionPlus,
    'Blue First'            => ::BlueFirst,
    'Blue Star'             => ::BlueStar
  }

  def self.new(name, expires_in, initial_quality)
    object = (Map[name] || ::Default).allocate
    object.send(:initialize, name, expires_in, initial_quality)
    object
  end

  def initialize(name, expires_in, initial_quality)
    self.name, self.expires_in, self.quality = name, expires_in, initial_quality
  end

  def update!
    raise "not implemented"
  end

  def update_quality(value)
    self.quality += value
  end

  def update_expires(value)
    self.expires_in += value
  end
end

class BlueFirst < Award
  def update!
    update_quality(1) if self.quality < 50
    update_expires(-1)
    update_quality(1) if self.quality < 50 && self.expires_in < 0
  end
end

class BlueStar < Award
  def update!
    update_quality(-2) if self.quality > 0
    update_expires(-1)
    update_quality(-2) if self.expires_in < 0 && self.quality > 0
  end
end

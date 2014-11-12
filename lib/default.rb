class Default < Award
  def update!
    update_quality(-1) if self.quality > 0
    update_expires(-1)
    update_quality(-1) if self.expires_in < 0
  end
end

class BlueCompare < Award
  def update!
    value = case self.expires_in
            when (6..10) then 2
            when (1..5) then 3
            else 1
            end
    value = (self.quality - 50) if self.quality + value > 50
    update_quality(value)
    update_expires(-1)
    update_quality(-self.quality) if self.expires_in < 0
  end
end

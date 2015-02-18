class String

  def to_wavecase
    self.gsub(/\w/).with_index{|s, i| i.even? ? s.upcase : s.downcase}
  end

  def upcase?
    self == self.upcase
  end

end
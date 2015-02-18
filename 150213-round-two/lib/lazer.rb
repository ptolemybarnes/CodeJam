class String

  def lazer scope=1, mode=:blast
    start_point = self.length/2 - scope/2

    if mode == :blast
      self[start_point...start_point+scope] = " " * scope
      self
    elsif mode == :stun
      scrambled_chars = self[start_point...start_point+scope].chars.shuffle.join
      self[0...start_point] + scrambled_chars + self[(start_point + scope)..-1] 
    else
      raise "Unknown mode #{mode}"
    end
  end

end


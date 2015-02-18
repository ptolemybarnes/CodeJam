class Cat
  attr_accessor :hatted

  def initialize
    @hatted = true
  end

  def hatted?
    @hatted
  end

  def doff_hat
    @hatted = false
    self
  end

  def don_hat
    @hatted = true
    self
  end

end
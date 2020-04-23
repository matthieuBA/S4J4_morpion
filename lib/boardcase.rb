class BoardCase
  attr_accessor :position, :sign
  def initialize(position)
    @sign = "  "
    @position = position
  end

  def array
    self.sign = @sign
  end

  def update(position, sign)
    self.sign = sign
    self.position = position
  end
end
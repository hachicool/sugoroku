class Dice
  def get
    rand(6) + 1
  end
end

=begin
dice = Dice.new
n = dice.get
puts n
=end

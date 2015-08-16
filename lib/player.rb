class Player
  def initialize(name)
    @name = name
    @n = 0
  end
  def get_name
    @name
  end
  def reset
    @n = 0
  end
  def go(n)
    @n = n
  end
  def step(n)
    @n += n
  end
end

=begin
p1 = Player.new('Taro')
p p1 # #<Player:0x1e2ba70 @name="Taro", @n=0>
puts p1.get_name # Taro
puts p1.step(8)  #  8
puts p1.step(2)  # 10
puts p1.step(6)  # 16
puts p1.go(5)    #  5
=end


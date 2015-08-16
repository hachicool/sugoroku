class Board
  def initialize(file)
    csv = File.open(file).read
    @cell = csv.split(',').map(&:to_i)
  end
  def get(n)
    @cell[n]
  end
  def goal?(n)
    n >= @cell.length
  end
end

=begin
b = Board.new('board.csv')
p b
puts
p b.get(13)
p b.goal?(13)
puts
p b.get(14)
p b.goal?(14)
puts
p b.get(15)
p b.goal?(15)
puts
p b.get(16)
p b.goal?(16)
=end
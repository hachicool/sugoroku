
class Logger
  def start
    puts "Game Start!!"
  end
  def finish
    puts "finish!!"
  end
  def goal
    puts "Goooooaaaaal!!"
  end
  def turn(name, i)
    puts %(=== [#{i}] #{name}'s turn ===)
  end
  def dice(n)
    puts %(Dice number is #{n})
  end
  def at(m)
    puts %(Player at #{m})
  end
  def order(q)
    if q == 0
      puts "stay!"
    elsif q > 0
      puts "#{q} step forward"
    elsif q < 0
      puts "#{q} step backward"
    end
  end
end

=begin
logger = Logger.new
logger.start
logger.finish
logger.goal
logger.turn("Taro", 17)
logger.dice(3)
logger.at(6)
logger.order(3)
logger.order(-2)
logger.order(0)
=end



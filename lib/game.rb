class Game
  def initialize
    @player = []
  end
  def set_board(board)
    @board = board
  end
  def add_player(player)
    @player << player
  end
  def set_dice(dice)
    @dice = dice
  end
  def start
    @player.map(&:reset)
    puts "game start!!"
    1000.times{|i|
      j = i % @player.length
      player = @player[j]
      puts %(=== [#{i}] #{player.get_name}'s turn ===)
      n = @dice.get
      puts %(Dice number is #{n})
      
      m = player.step(n) 
      if @board.goal?(m)
        puts %(Goooooaaaaal!!!)
        break
      end
      puts %(Player at #{m})
      
      q = @board.get(m)
      puts %(cell order: #{q})
      
      r = player.step(q)
      if @board.goal?(r)
        puts %(Goooooaaaaal!!!)
        break
      end
      puts %(Player at #{r})
    }
    puts "finish!!"
  end
end

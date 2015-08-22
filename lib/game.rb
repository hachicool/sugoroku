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
  def set_logger(logger)
    @logger = logger
  end
  def start
    @player.map(&:reset)
    @logger.start
    i = 0
    while true do
      j = i % @player.length
      player = @player[j]
      @logger.turn(player.get_name, i)
      n = @dice.get
      @logger.dice(n)
      
      m = player.step(n) 
      if @board.goal?(m)
        @logger.goal
        break
      end
      @logger.at(m)
      
      q = @board.get(m)
      @logger.order(q)
      
      r = player.step(q)
      if @board.goal?(r)
        @logger.goal
        break
      end
      @logger.at(r)
      i += 1
    end
    @logger.finish
  end
end

$: << File.dirname(__FILE__)
require 'lib/board'
require 'lib/player'
require 'lib/dice'
require 'lib/game'

game = Game.new
game.set_board(Board.new('board.csv'))
game.add_player(Player.new('Taro'))
game.add_player(Player.new('Jiro'))
game.set_dice(Dice.new)
game.start

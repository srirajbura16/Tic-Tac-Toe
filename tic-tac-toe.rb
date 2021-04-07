require 'board'
require 'player'

class TicTacToe
  def initialize()
    @board = Board.new
    @player_x = player_x
    @player_o = player_o
  end
end

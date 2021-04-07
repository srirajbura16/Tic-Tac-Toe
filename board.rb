class Board
  def initialize
    @board = Array.new(3) { Array.new(3) }
  end

  def render_board
    @board.each_with_index do |row, row_idx|
      row.each_with_index do |cell, col_idx|
        print cell == nil ? (col_idx + 1) + (3 * row_idx) : cell
        print ' | '  unless col_idx == 2
      end
      puts "\n- - - - -" unless row_idx == 2
    end
  end

  def check_

  def verticles
    verticles = []
    3.times do |i|
      verticles << @board[0][i], @board[1][i], @board[2][i]
    end
    verticles
  end

  def horizontals
    @board
  end

  def diagonals
    [[ @board[0][0],@board[1][1],@board[2][2] ],[ @board[2][0],@board[1][1],@board[0][2] ]]
  end
end 
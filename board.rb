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

end
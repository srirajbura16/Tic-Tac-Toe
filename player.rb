class Player
  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end

  def get_move
    puts 'Player #{@symbol}, enter your input:'
    gets.chomp
  end
end
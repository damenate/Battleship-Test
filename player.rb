def get_user_input
  gets.chomp
end

class Player
  attr_reader :name, :grid

  def initialize(name)
    @name = name
    @grid = Grid.new
  end

end

class ComputerPlayer < Player

  attr_reader :name, :length

  def initialize
    @name = "HAL 9000"
    @grid = Grid.new
  end
end

class HumanPlayer < Player
  attr_reader :name, :grid, :ships
  def initialize (name = "Dave")
    @name = name
    @grid = Grid.new
    @ships = []
  end

  def place_ships(ship_length = [2, 5])
    counter = 0
    loop do
    puts "#{@name}, where would you like to place a ship of length #{}?"
    input = get_user_input
    x = @grid.x_of(input)
    y = @grid.y_of(input)
    puts "Across or Down?"
    input = get_user_input
    across == false if input == "Down"
    @grid.place_ship(Ship.new(2), x, y, across)
    @ships << Ship.new(2)
    break if @ships.count == ship_length.count
    end
  end
end

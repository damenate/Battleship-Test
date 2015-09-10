class Player
  # attr_reader :name :grid
  # # def initialize(name)
  # #   @name = name
  # #   @grid = Grid.new

  
end

class ComputerPlayer < Player

  attr_reader :name, :length

  def initialize
    @name = "HAL 9000"
  end
end

class HumanPlayer < Player
  attr_reader :name
  def initialize (name = "Dave")
    @name = name
  end
end

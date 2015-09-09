class Player
  
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

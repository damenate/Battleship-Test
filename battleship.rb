class Player
  #attr_accessor :name :length

 def initialize(name, length)
   @name = name
   @length = length
 end
end

class ComputerPlayer < Player
 def initialize(name: "HAL 9000")
   @name = name
 end
 def name()
   @name
 end
end

class HumanPlayer < Player
 def initialize(name = "Dave")
   @name = name
 end

 def name()
   @name
 end
end

class Position
  def initialize(down, across)
    @down = down
    @across = across
  end
  def down()
    @down
  end
  def across ()
    @across
  end
end

class Ship
  def initialize(length)
  @length = length
  end
  def length()
    @length
  end

  def place(x, y, is_across)
    i = 1
    @positions = []

    if is_across
      until self.length == i do
        @positions[i] = Position.new(x,y)
        i += 1
        x += 1
      end
    else
      until self.length == i do
        @positions[i] = Position.new(x,y)
        i += 1
        y += 1
    end
    if @positions.length == self.length
      return true
    end
  end
  def positions
    @positions
  end
end

  def covers?(x,y)
    check = [x,y].to_s
    position_guts = self.positions
    position_guts.to_s.include?(check)
    # @posx = posx
    # @posy = posy
    # @hit = hit
  end
end

class Position
  def initialize(x,y)
    # @posx = posx
    # @posy = posy
    # @hit = hit
  end
end




#
#
# (x...x+@length).each do |i|
# @pos << Position.new(i, y)
#
# (y...y+@length).each do |i|
# @pos << Position.new(i, y)



















#a

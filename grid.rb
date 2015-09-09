require './ship'

class Grid
  def initialize
    @ships = []
  end

  def has_ship_on?(x, y)
    @ships.each do |ship|
      return true if ship.covers?(x, y)
    end
    false
  end

  def place_ship(ship, x ,y, across)
    ship.place(x, y, across)

    unless @ships.any?{|s| s.overlaps_with?(ship)}
      @ships << ship
    else
      false
    end
  end

  def display
    puts empty_grid
    # puts"1   2   3   4   5   6   7   8   9   10"
    # puts"-----------------------------------------"
    # 10.times do |i|
  end

  def empty_grid
    %Q{    1   2   3   4   5   6   7   8   9   10
  -----------------------------------------
A |   |   |   |   |   |   |   |   |   |   |
B |   |   |   |   |   |   |   |   |   |   |
C |   |   |   |   |   |   |   |   |   |   |
D |   |   |   |   |   |   |   |   |   |   |
E |   |   |   |   |   |   |   |   |   |   |
F |   |   |   |   |   |   |   |   |   |   |
G |   |   |   |   |   |   |   |   |   |   |
H |   |   |   |   |   |   |   |   |   |   |
I |   |   |   |   |   |   |   |   |   |   |
J |   |   |   |   |   |   |   |   |   |   |
  -----------------------------------------
}
  end

end

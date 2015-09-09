require './ship'

class Grid
  def initialize
    @ships = []
    @grid = []
    @hits = []
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


  def fire_at(x, y)
    if has_ship_on?(x, y) && !@hits.include?([x,y])
      @hits << [x,y]
    end
  end

  def display
    e_coord = "   |"
    o_coord = " O |"
    h_coord = " X |"

    left_col = ["A |", "B |", "C |", "D |", "E |", "F |", "G |", "H |", "I |", "J |"]
    puts"    1   2   3   4   5   6   7   8   9   10"
    print"  -----------------------------------------"
    10.times do |a|
    print "\n"
    print left_col[a]
    10.times do |b|
      if has_ship_on?(b+1, a+1) && @hits.include?([b+1, a+1])
        print h_coord
      elsif has_ship_on?(b+1, a+1)
        print o_coord
      else
        print e_coord
      end
    end
  end
  puts"\n  -----------------------------------------"
  end
end

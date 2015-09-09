class Ship
  attr_reader :length
  def initialize(length)
    @length = length
    @positions = []

  end

  def place(x, y, across)
    return false !@positions.empty? #return false if @positions is NOT empty
    if across
      (x...x+@length).each do |i|
      @positions << [i, y]
      end
    else
      (y...y+@length).each do |i|
      @positions << [x, i]
      end
    end
  end

  def covers?(x, y)
   @positions.include?([x,y])
  end

  def overlaps_with?(other_ship)
    @positons.each do |place|
    return true if other.covers?(place[0],place[1])
  end
  false
end

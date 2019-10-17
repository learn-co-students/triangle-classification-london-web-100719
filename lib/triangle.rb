class Triangle
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two 
    @side_three = side_three
  end 

  def kind
    if @side_one + @side_two > @side_three || @side_two +  @side_three > @side_one
      if @side_one == @side_two && @side_two == @side_three
        return :equilateral
      elsif @side_one != @side_two && @side_one != @side_three && @side_three != @side_two
        return :scalene
      elsif @side_one == @side_two || @side_one == @side_three || @side_two == @side_three
        return :isosceles
    elsif @side_one = 0 || @side_two = 0 || @side_three = 0
      raise TriangleError
    else #@side_one + @side_two <= @side_three || @side_one + @side_three <= @side_two
      raise TriangleError
    end 
  end 

  class TriangleError < StandardError
    def message 
      "This is not a correct triangle, try again!"
    end
  end

end

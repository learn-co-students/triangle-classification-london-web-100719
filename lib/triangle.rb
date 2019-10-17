class Triangle
  # write code here
  attr_accessor :side_a, :side_b, :side_c

  def initialize(side_a, side_b, side_c)
    @side_a, @side_b, @side_c = [side_a, side_b, side_c].sort
  end

  def kind
    raise TriangleError if @side_a <= 0 || @side_a + @side_b <= @side_c

    if @side_a == @side_c
      :equilateral
    elsif @side_a == @side_b || side_b == @side_c
      :isosceles
    else 
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "Each side must be larger than zero"
    end
  end


  
end

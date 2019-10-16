class Triangle
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if @a == 0 || @b == 0 || @c == 0
      raise TriangleError
    elsif @a + @b <= @c || @a + @c <= @b || @b + @c <= @a
      raise TriangleError
    elsif @a == @b && @b == @c
      return :equilateral
    elsif @a == @b || @a == @c || @b == @c
      return :isosceles
    else
      return :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "This is not a valid triangle! Try adjusting one of the side lengths."
    end
  end
end
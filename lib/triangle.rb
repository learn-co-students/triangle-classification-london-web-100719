class Triangle
  attr_reader :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  class TriangleError < StandardError
  end

  def check_for_valid_triangle
    triangle_sides_arr = [@side_1, @side_2, @side_3]

    triangle_sides_arr.each do |side|
      if side <= 0 || @side_1 + @side_2 <= @side_3 || @side_1 + @side_3 <= @side_2 || @side_2 + @side_3 <= @side_1
        begin
          raise TriangleError
        end
      end
    end
  end

  def kind
    check_for_valid_triangle

    if @side_1 == @side_2 && @side_2 == @side_3
      :equilateral
    elsif @side_1 == @side_2 || @side_1 == @side_3 || @side_2 == @side_3
      :isosceles
    else
      :scalene
    end
  end

end

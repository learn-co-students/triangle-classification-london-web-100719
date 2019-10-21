class Triangle
  # write code here


  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
    self.valid?
  end

  def valid?
    @valid = true
    @valid = false if @s1*@s2*@s3 == 0
    @valid = false if @s1+@s2<=@s3 || @s2+@s3<=@s1 || @s1+@s3<=@s2 
  end

  def kind
    raise TriangleError unless @valid == true
    if @s1 == @s2 && @s2 == @s3
      return :equilateral
    elsif @s1 == @s2 || @s2 == @s3 || @s1 == @s3
      return :isosceles
    else 
      return :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "invalid triangle"
    end
  end

end

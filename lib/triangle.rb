class Triangle
  attr_accessor :a, :b, :c
  def initialize a, b, c
    @a = a
    @b = b  
    @c = c
  end

  def kind
    length_arr = [a,b,c]
    length_arr_uniq = length_arr.uniq.length
    if length_arr.sort[0...-1].sum > length_arr.max && length_arr.min > 0
      case length_arr_uniq
        when 1
          :equilateral
        when 2
          :isosceles
        when 3
          :scalene
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    puts 'invalid triangle'
  end
end

# tri = Triangle.new(5,2,3)

# puts tri.kind
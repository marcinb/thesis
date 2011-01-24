class Array
  def each_nested(&block)
    for i in 0...self.size do
      if self[i].is_a? Array
        self[i].each_nested &block
      else
        yield self[i]
      end
    end
  end
end

multidimensional_array = [
  [11, 12, 13],
  [21, 22],
  [31, 32, 33, 34]
]

multidimensional_array.each_nested { |element| puts element }

# Execution Result:
# 11
# 12
# 13
# 21
# 22
# 31
# 32
# 33
# 34

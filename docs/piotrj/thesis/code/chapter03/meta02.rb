class MyClass
end

object = MyClass.new

puts "a or b?"
choice = gets.chomp

case choice
when "a"
  def object.what?
    puts "This is 'A'"
  end
when "b"
  def object.what?
    puts "This is 'B'"
  end
else
  def object.what?
    puts "Unknown"
  end
end

object.what?
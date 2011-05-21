class MyClass
end

object = MyClass.new

puts "a or b?"
choice = gets.chomp

case choice
when "a"
  class MyClass
    def what?
      puts "This is 'A'"
    end
  end
when "b"
  class MyClass
    def what?
      puts "This is 'B'"
    end
  end
else
  class MyClass
    def what?
      puts "Unknown"
    end
  end
end

object.what?
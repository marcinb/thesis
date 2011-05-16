require 'rubygems'
require 'rails'

class Dog
  def self.voice
    puts "Whoof"
  end
end

class Cat
  def self.voice
    puts "Meow"
  end
end

class Cow
  def self.voice
    puts "Moo"
  end
end

puts "Type in animal you want to hear"
puts "Choices:"
puts "Dog, Cat, Cow"
choice = gets.chomp
choice.constantize.voice
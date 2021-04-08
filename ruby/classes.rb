# this file serves as a place to practice ruby classes

class Muppet

    def initialize(name, color)
        @name = name
        @color = color
        puts "This muppet is called #{name}"
        puts "The color is #{color}"
    end

    def name
        @name
    end
end

# creating a new class and assigning the name, and a random color to it
new_class = Muppet.new("Todd", ["red", "green", "orange", "blue"].sample)
puts new_class.name

another_new_class = Muppet.new("George", ['orange', 'silver', 'white', 'brown'].sample)
puts another_new_class.name
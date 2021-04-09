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

# =========================================
class Birds
    SPECIES = ['Belted Kingfisher', 'Yellow-Billed Cuckoo', 'White-Cheeked Pintail', 'Cinnamon Teal', 'Lesser Scaup', 'Bufflehead', 'Common Goldeneye', 'Fulvous Whistling Duck', 'Hooded Merganser', 'White-Winged Scoter', 'Chimney Swift', 'Rufous Hummingbird', 'Chuck-Wills-Widow', 'Whip-Poor-Will', 'Albatross', 'Ruddy Turnstone', 'Piping Plover', 'Killdeer', 'Laughing Gull', 'Marbled Godwit', 'Least Tern', 'New World Warbler']

    def initialize(adjective, name)
        @adjective = adjective
        @name = name
        @type = SPECIES.sample

        puts "#{name} is an #{adjective} bird!"
    end

    def type
        print "#{@name} is an #{@type}"
    end
end

the_bird = Birds.new("fun", "Wally")
puts the_bird.type

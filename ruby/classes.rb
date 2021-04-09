# this file serves as a place to practice ruby classes

class Muppet

    COLOR = ['orange', 'silver', 'white', 'brown']

    def initialize(name)
        @name = name
        @color = COLOR.sample
        puts "This muppet is called #{name}"
        puts "The color is #{@color}"
    end

    def name
        @name
    end

    def honk
        puts "#{@name} is making a honking sound"
    end

    def flail
        puts "#{@name} is flailing its arms!"
    end
end

# creating a new class and assigning the name
new_class = Muppet.new("Todd")
puts new_class.name

another_new_class = Muppet.new("George")
puts another_new_class.name

q = Muppet.new("K-rad")
q.honk
q.flail

# =========================================
puts "===== Bird Class zone below ====="
class Birds
    attr_accessor :adjective, :name

    SPECIES = ['Belted Kingfisher', 'Yellow-Billed Cuckoo', 'White-Cheeked Pintail', 'Cinnamon Teal', 'Lesser Scaup', 'Bufflehead', 'Common Goldeneye', 'Fulvous Whistling Duck', 'Hooded Merganser', 'White-Winged Scoter', 'Chimney Swift', 'Rufous Hummingbird', 'Chuck-Wills-Widow', 'Whip-Poor-Will', 'Albatross', 'Ruddy Turnstone', 'Piping Plover', 'Killdeer', 'Laughing Gull', 'Marbled Godwit', 'Least Tern', 'New World Warbler']

    def initialize(adjective, name)
        @adjective = adjective
        @name = name
        @type = SPECIES.sample

        puts "#{name} is an #{adjective} bird!"
    end

    def type
        puts "#{@name} is an #{@type}"
    end

    def hungry
        puts "#{@name} wants some regurgitated worms!"
    end

    def flap
        puts "Flap! #{@name} is taking flight!"
    end

    def new_name=value
        @name = value
    end

    def new_adj=value
        @adjective = value
        puts "#{@name} is now #{@adjective}"
    end

end

# testing the birds class and methods
the_bird = Birds.new("fun", "Wally")
puts the_bird.type
the_bird.hungry
the_bird.flap

grumpy = Birds.new("mad", "Steven")
grumpy.type
grumpy.hungry
grumpy.flap

grumpy.new_name="Steven The Bird" 
grumpy.new_adj="tired"
grumpy.flap


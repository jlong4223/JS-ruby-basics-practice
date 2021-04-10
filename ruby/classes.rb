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

# ======================================
puts "============= Dessert Class Zone below ================="

class Dessert
    def initialize name, sugar_content
        @name = name
        @sugar_content = sugar_content

        puts "The name is: #{@name} and this is the sugar content: #{@sugar_content}"
    end

    def eat       
        puts "Yum! This #{@name} is so delicious!"
    end
end

# the below classes inherit everything from Dessert
class Pie < Dessert
    def initialize(name, sugar_content)
        @name = name
    end
end

class DeepFriedDessert < Dessert
    # def initialize(name, sugar_content)
    #     @name = name
    # end
    def eat
        puts "Yum! This #{@name} is sooo ...ack! ugh! *heart-attack*"
    end
end

p = Pie.new('cobbler', 'sweet')
# can call the eat method even though not directly in the Pie class bc it is inherited from Dessert
p.eat

d = DeepFriedDessert.new('oreos', 'salty')
# calling the eat here looks within the direct class first before moving up the chain to the Dessert class
d.eat

class IceCream < Dessert
    def initialize name, sugar_content, toppings
        @toppings = toppings
        # using super to grab the initalize actions for the two variables within Dessert
        super(name, sugar_content)
    end

    def toppings
        puts "The toppings are: #{@toppings}"
    end
end

i = IceCream.new("chocolate", "sweet", "cookie dough, pretzels")
i.toppings
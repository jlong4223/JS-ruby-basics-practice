# create a terminal questionnaire:
# ask the user for input on their name, age, address, favorite ... and save within a hash/object

# ========== Needs: =========== #
# person class with personal details 
# question class

class Person 
    # attr_accessor :name, :age, :address, :profession

    def initialize
        @name = "jared"
    end 

    def name
        @name
    end 

    def name=value
        @name=value
    end
end

person1 = Person.new

p person1.name
person1.name = "joy"
p person1.name
person1.name = 'chloe'
p person1.name

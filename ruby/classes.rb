# create a terminal questionnaire:
# ask the user for input on their name, age, address, favorite ... and save within a hash/object

# ========== Needs: =========== #
# person class with personal details 
# question class

class Person 
    attr_accessor :name, :age, :address, :profession

    def initialize name, age, address, profession
       @name = name
       @age = age
       @address = address
       @profession = profession 
    end 

    def make_person
        new_person = Person.new name, age, address, profession
    end
end

def prompt_questions namehere
    print namehere
    gets
end

# getting the name of the person
name = prompt_questions("\nHello, what is your name? ").chomp

puts "\n\n Hi there #{name}, ready for some more questions?"


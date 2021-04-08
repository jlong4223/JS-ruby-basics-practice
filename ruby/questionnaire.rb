# create a terminal questionnaire:
# ask the user for input on their name, age, address, favorite ... and save within a hash/object

require 'colorize'

# ========== Needs: =========== #
# person class with personal details 
# question class

# ==== Setting up the classes
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

# creating new classes from the above class
client = Person.new "", "", "", ""
info_seeker = Person.new "Jones", "", "", "Spy"

# ====== questions login begins here
def prompt_questions namehere
    print namehere
    gets
end

# getting the name of the person
name = prompt_questions("\nHello, what is your name? ").chomp

# beginning the greeting
puts "Hi there #{name.blue}, I am #{info_seeker.name.green}, and I am a #{info_seeker.profession.red}...ready for some more questions?"

# setting the client class name to be the entered prompt
client.name = "#{name}"
print "Your name is #{client.name}...interesting\n\n".red

# beginning more questions based on the answer
loop do
    puts "(Y)es or (N)ot right now..."
    get_answer = gets.chomp.downcase

    if get_answer == 'n'
        puts "Bye, hope to see you again soon...just kidding"
        puts "So, we're going to move on anyways..."
        # TODO add more
        break
    else
        # asks initial question to get age
        puts "Lets continue #{client.name} :)"
        print "So, how old are you? "

        # setting the age to the response
        get_age = gets.chomp.downcase
        client.age = get_age

        # clarifiying the age
        puts "So, your name is #{client.name.green} and you are #{client.age.green}? (Y)es or (N)o"
        get_response = gets.chomp.downcase
        
        # if the age clarified is wrong, will keep asking until correct
        until get_response == 'y' do
            print "Oh, my mistake, how old are you? "
            get_age = gets.chomp.downcase
            client.age = get_age

            puts "So your name is #{client.name.green} and you are #{client.age.green}? (Y)es or (N)o"
            get_response = gets.chomp.downcase
            if get_response == 'y'
                break
            end
        end

        puts "So let me clarify the information that I have:"
        print "Your name is #{client.name.green}\n"
        print "Your age is #{client.age.green}\n"
        puts "Now, lets move on to our next set of questions\n"

        print "What was your profession before coming here? "
        get_profession = gets.chomp.downcase

        client.profession = get_profession

        puts "So you're telling me, you were a #{client.profession.green}? (Y)es or (N)o"
        get_profession_clarification = gets.chomp.downcase

        if get_profession_clarification == 'n'
            until get_profession_clarification == 'y' do
                print "My mistake, what were you doing before this? "
                get_profession = gets.chomp.downcase
                client.profession = get_profession

                puts "So you're telling me, you were a #{client.profession.green}? (Y)es or (N)o"
                get_profession_clarification = gets.chomp.downcase
                if get_profession_clarification == "y"
                    break
                end
            end
        end

        puts "Great, lets move on..."

        break
    end
end
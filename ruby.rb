def hello 
    puts "hello jared, this is a your ruby basics practice file"
end

puts hello


# puts "=========================================="

def howManySeconds num
    num * 3600
end

puts howManySeconds(2)

# puts "============================================"

def giveMeSomething name
    name + " is the coolest"
end
puts giveMeSomething("Jared")

# ================================
# checking if a year is a leap-year 
# TODO transfer this one to js
def leap_year year
    if year % 4 == 0
      if year % 100 == 0
        if yearVar % 400 == 0
          return true
        end
        return false
      end
      return true
    end
    false
  end

puts leap_year(2020)

# ======================================================
# write a method that reveres a string
def reverse_it
    word="word"
    puts word.reverse
end
puts reverse_it

# searching for an age in the array
def search_ages age
 ages=[10, 12, 4, 67, 100, 2]
 if ages.include?(age)
  puts "#{age} is in the array"
 else
   puts "#{false}, #{age} is not in the array"
 end
end

search_ages(3)


# =========================================
# given arguments, name, value (key-value pair), return an obj with the name and value as key-value pairs in the object

def make_hash name, value
  # below returns two seperate key-value pairs
  # h = Hash[name: name, value: value]

  # below returns the parameters as a key-value pair
  h = Hash[name => value]
  puts h
end

make_hash 'jared', 25


# ===============================
# write a method that multiplies all values in an array

def multiplyArray
  numbers=[1, 2, 3, 4]
  puts numbers.inject(:*)
end

multiplyArray

# ================================
# Every day you rent the car costs $40. If you rent the car for 7 or more days, you get $50 off your total. Alternatively, if you rent the car for 3 or more days, you get $20 off your total.

def rental_car_cost(d)
  if d >= 7
    puts (d * 40) - 50
  elsif d >= 3 && d < 7
    puts (d * 40) - 20
  elsif d < 3 && d < 7
    puts d * 40
  end
end

rental_car_cost(2)

# ================================
# Create a function that gives a personalized greeting. This function takes two parameters: name and owner.

def greet name, owner
  if name.downcase == owner || name.downcase == owner.downcase
    "Hello Boss"
  else 
    "Hello guest"
  end
end

puts greet('Jared', 'jared')
# better way using ternary below: 

def greetTwo(name, owner)
  name == owner ? "Hello Boss" : "Hello Guest"
end
puts greetTwo "Jared", "Tom"


# =====================================
# square every digit of a number and concatenate them
def square_digits num
  num.to_s.split('').map{|num| num.to_i*num.to_i}.join.to_i
end

puts square_digits(3212)
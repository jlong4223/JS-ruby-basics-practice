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

def rental_car_cost_two d
  d >=7 ? (d * 40) - 50 : d >=3 ? (d * 40) - 20 : d < 3 ? d * 40 : 'n/a'
end

puts "rental car part 2: ", rental_car_cost_two(2)

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
  name.downcase == owner || name.downcase == owner.downcase ? "Hello Boss" : "Hello Guest"
end
puts "greetTwo:"
puts greetTwo "Jared", "JARED"


# =====================================
# square every digit of a number and concatenate them
def square_digits num
  num.to_s.split('').map{|num| num.to_i*num.to_i}.join.to_i
end

puts square_digits(3212)

# =====================================
# Complete the function so that it finds the mean of the three scores passed to it and returns the letter value associated with that grade.
def get_grade(s1, s2, s3)
  avg = (s1 + s2 + s3)/3
  
  avg >= 90 && avg <=100 ? "A" : 
  avg >= 80 ? "B" : 
  avg >= 70 ? "C" : 
  avg >= 60 ? "D" : 
  "F" 
  
end

puts get_grade(80, 92, 92)

# ======================================
# Write a function which converts the input string to uppercase.
def make_upper_case(str)
  puts str.upcase
end

make_upper_case 'hello'

# =====================================
# make a function that can take any non-negative integer as an argument and return it with its digits in descending order.

def descending_order(n)
  n.to_s.split('').sort_by {|x| x}.join('').reverse.to_i
end

puts descending_order 1234659


#  ===================================
# return the sum of all of the positives numbers in the array

# select method to filter through array and only add(.sum) if i is greater than 0
def positive_sum(arr)
  arr.select {|i| i > 0}.sum
end

puts positive_sum([0, 3, 3, -9])

# another way: (shortcut to using select method to check for pos num and using .sum to add them)
def positive_arr_sum arr
  arr.select(&:positive?).sum
end 
puts positive_arr_sum([0, 3, 3, -9])

# ==================================
# A hero is on his way to the castle to complete his mission. However, he's been told that the castle is surrounded with a couple of powerful dragons! each dragon takes 2 bullets to be defeated, our hero has no idea how many bullets he should carry.. Assuming he's gonna grab a specific given number of bullets and move forward to fight another specific given number of dragons, will he survive?

# Return True if yes, False otherwise

def hero bullets, dragons
  bullets >= dragons * 2 ? true : false
end

puts hero 4,2

# ===================================
# mapping a array with string numbers and returning integers
def to_number_array(string_array)
  string_array.map{|num| num.to_s.split('').join("").to_i}
end

puts to_number_array(["2", "3", "4"])

# /* - If one of the flowers has an even number of petals and the other has an odd number of petals it means they are in love.

# Write a function that will take the number of petals of each flower and return true if they are in love and false if they aren't. */

def lovefunc( flower1, flower2 )
  puts flower1 % 2 != flower2 % 2
end

lovefunc(2, 4)

# another way:
def lovefuncTwo f1, f2
puts f1.even?  == f2.odd?
end 

lovefuncTwo(5,6)

# ===================================
# Write function RemoveExclamationMarks which removes all exclamation marks from a given string.

# I am using tr() to replace each ! with an empty string, therefore removing them

def remove_exclamation_marks(s)
  removeExca = s.tr('!', '')

  puts removeExca
end

remove_exclamation_marks("the! cat! is! smelly!")

# another way:
def remove_exclamation_marks(s)
  s.delete("!")
end

puts remove_exclamation_marks("Jared! is! the! coolest!")

# ===================================================
# Consider an array/list of sheep where some sheep may be missing from their place. We need a function that counts the number of sheep present in the array (true means present).

def countSheeps array
  array.select{|sheep| sheep == true}.length()
end

puts countSheeps([true, false, true, true, true, false, nil, true])

# ==============================================
# Сalculate how many years ago the father was twice as old as his son (or in how many years he will be twice as old).

def twice_as_old(dad, son)
    doubledSon = son * 2
    puts "the doubled son age: #{doubledSon}"
    
    difference = doubledSon > dad ? doubledSon - dad : dad - doubledSon
    puts difference
end

twice_as_old 30,16

# another way: using .abs to print the absolute value of the number
def twice_as_old_v2(dad, son)
  (dad - son * 2).abs
end

puts twice_as_old_v2(30,10)

# =============================================
# calculating the total of my home office

prices = []
p prices

mouse = 99
keyboard = 99
m1_small = 1300
m1_big = 1900
moniter = 490
speakers = 40
big_battery = 60
ipads = 600 * 2
desk = 1400
old_macs = 1000 * 2
headset = 20
mac_cable_adapter = 32 
mouse_pads = 15 * 2
camera = 90

prices.append(mouse, keyboard, m1_small, m1_big, moniter, speakers, big_battery, ipads, desk, old_macs, headset, mac_cable_adapter, mouse_pads, camera)
p prices

total = prices.inject(0){|price, x| price + x}
puts "total v1: #{total}"

total_v2 = prices.inject(:+)
puts "total v2: #{total_v2}"
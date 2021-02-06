def hello 
    puts "hello jared, this is a your ruby basics practice file"
end

puts hello


puts "======================"

def howManySeconds num
    num * 3600
end

puts howManySeconds(2)

puts "======================"

def giveMeSomething name
    name + " is the coolest"
end
puts giveMeSomething("Jared")

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
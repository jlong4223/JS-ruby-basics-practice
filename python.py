# ==========================

def helloname(name):
    print("hello " + name)

helloname('jared')

# ==========================
# return the sum of all of the positives numbers in the array
# select method to filter through array and only add(.sum) if i is greater than 0

def lovefunc( flower1, flower2 ):
    print(flower1 / 2 != flower2 / 2)

lovefunc(3, 2)

# =====================================
# A hero is on his way to the castle to complete his mission. However, he's been told that the castle is surrounded with a couple of powerful dragons! each dragon takes 2 bullets to be defeated, our hero has no idea how many bullets he should carry.. Assuming he's gonna grab a specific given number of bullets and move forward to fight another specific given number of dragons, will he survive?

# Return True if yes, False otherwise

def hero(bullets, dragons):
    if bullets >= dragons * 2: print(True)
    else: print(False)

hero(3, 3)

# another way:
def heroTwo(bullets, dragons):
    return(bullets >= dragons * 2)

print ('== Hero Two Func: ', heroTwo(4, 1))

# ======================================
# double the integer and return it.
def double_integer(i):
    return(i*2)

print(double_integer(2))

# =====================================
# Write a function which converts the input string to uppercase.
def make_upper_case(s):
    return(s.upper())

print(make_upper_case('jared'))

# =======================================
# Create a function that gives a personalized greeting. This function takes two parameters: name and owner.
# Use conditionals to return the proper message:

def greet(name, owner):
    if name == owner:
       print('Hello Boss')
    else:
        print('hello guest')

greet('jared', 'jared')

# inline version 
def greetTwo(name, owner):
    print('Hello boss' if name == owner else 'Hello guest')

greetTwo('jared', 'john')

# ========================================
# creates a function to remove exclamation marks in a givin string
def remove_exclamation_marks(s):
    print(s.replace("!", ""))

remove_exclamation_marks("Jared! is! coding! python!")


# ================================================
# Consider an array/list of sheep where some sheep may be missing from their place. We need a function that counts the number of sheep present in the array (true means present).

def count_sheeps(sheep):
    # result = filter(lambda x: x == True, sheep)
    result = sum(x == True for x in sheep)
    print(result)

count_sheeps([True, False, True, True, False, True])

# ===== another way: 

def count_again(sheep):
    return sheep.count(True)

print(count_again([True, False, True]))


# ==============================================
# Сalculate how many years ago the father was twice as old as his son (or in how many years he will be twice as old).
# ternary in python: [on_true] if [expression] else [on_false] 

def twice_as_old(dad_years_old, son_years_old):
    pass
    doubled_son = son_years_old * 2

    difference = doubled_son - dad_years_old if doubled_son > dad_years_old  else dad_years_old - doubled_son

    print(difference)

twice_as_old(30, 16)
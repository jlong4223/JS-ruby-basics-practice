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

print "== Hero Two Func: ", heroTwo(4, 1)
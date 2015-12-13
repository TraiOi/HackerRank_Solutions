# In our previous challenges, we explored a couple of ways to pass arguments to our methods, but both of there were limited in the terms of the number of arguments we can pass at a time. Sure enough, using default parameters allowed us to lower the number of arguments in some cases but didn't help in the situations where we want to pass a variable (and possibly large!) number of arguments.

# For example, consider a method to compute the sum of numbers. Obviously, neither you wouldn't want to write different method for adding different count of numbers, or create one method with hundred default arguments each initialized to 0. What if I want to add 1000 numbers?

# That's where Ruby's * come into play. Take a look.

# | def sum(first, *rest)
# |     rest.reduce(first) { |o, x| o + x }
# | end

# | > sum(1) # first = 1, rest = []
# | 1
# | > sum(1, 2) # first = 1, rest = [2]
# | 3
# | > sum(1, 2, 3) # first = 1, rest = [2, 3]
# | 6

# Putting the * (called splat) to a parameter assigns all of the values starting from that position in the method call to an array referred by the name rest inside the method. So, in this case our method requires at least one compulsory parameter because of the named variable first and rest all values are assigned as an array to rest.

# In this challenge, your task is to write a method for generating the full names of people, given their compulsory first name, last name and variable number of middle names.

# | > full_name('Harsha', 'Bhogle')
# | "Harsha Bhogle"
# | > full_name('Pradeep', 'Suresh', 'Satyanarayana')
# | "Pradeep Suresh Satayanarayana"
# | > full_name('Horc', 'G.', 'M.', 'Moon')
# | "Horc G. M. Moon"
# | > full_name('Marc') # error

def full_name(first, *last)
	last.inject(first){|x, y| x+" "+(y)}
end
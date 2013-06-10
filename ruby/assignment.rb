# assignment.rb
#
# write an expression that returns true by using ==
2 == 2

# write an expression that returns false using ==

2 == 3

# write an expression that returns true using !=

2 != 3

# write an expression that returns false using !=

2 != 2

# Write an if statement with 3 different branches
#   use != in the first branch, == in the second, and > in the third
#

if 2 != 2
  puts "first branch"
elsif 3 == 4
  puts "second branch"
elsif 3 > 2
  puts "third branch"
end


# Assign a variable based on the result of an if statement

x = 2 if (2 == 2) 


# Execute code based on the result of an if statement.
#   conditionally run puts "Hello Class" if 1 < 2


if 1 < 2
  puts "Hello Class"
end


# Try using an if statement at the end of an expression

puts "this works" if 2 == 2


# Write an if statement that negates the or operator to return true

if !(false || false)
  true
end


# Write an if statement that uses the and operator to create a false return
if true && false
   true
else
   false
end

# Write a Case Statement that checks if a variable is a vowel

puts "Give me a letter"
x = gets.downcase.chomp
case x
when "a","e","i","o","u"
  puts "is a vowel"
else
  puts "not a vowel"
end


# Rewrite that same case statement as an if statement

puts "Give me a letter"
x = gets.downcase.chomp
if x == "a" || x == "e" || x == "i" || x == "o" || x == "u"   
  puts "is a vowel"
else
  puts "is not a vowel"
end

# Write a Case statement that has at 4 branches and a default return


colors = ["1 - red", "2 - blue", "3 - yellow", "4 - green"]

entry = "start"

puts "pick a color by entering the number"
  puts colors
entry = gets.chomp
case entry 
when 1
  color = "red"
when 2
  color = "blue"
when 3
  color = "yellow"
when 4
  color = "green"
else
  puts "That is not a valid entry"
end

case color 
when "red"
  puts "#{color} makes you hungry"
when "blue"
  puts "#{color} relaxes"
when "green"
  puts "#{color} makes you creative"
when "yellow"
  puts "#{color} makes you hungry"
else
  puts "colors influence you in interesting ways!"
end

# Assignment
# Write a while loop that runs exactly 5 times

5.times do 
  puts "time"
end

x = 0
while x <5
  puts "time"
  x += 1
end


# Write a while loop that counts from 1 to 10 and puts all odd numbers
x = 0
while x < 10
  x += 1
  if (x % 2) != 0
    puts x
  end
end


# => you can check if a number is odd by calling the odd? method on it.
# => 1.odd? will return true

# REFACTORING based on above hint

x = 0
while x < 10
  x += 1
  if x.odd?
    puts x
  end
end
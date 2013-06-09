# assignment.rb

# FizzBuzz - The Programmer's Stairway to Heaven
# Define the fizzbuzz method to do the following: 10pts
  # Use the modulo % method (divisible by)
    # 2 % 2 #=> true
    # 1 % 2 #=> false
  # If a number is divisible by 3, puts "Fizz".
  # If a number is divisible by 5, puts "Buzz".
  # If a number is divisible by 3 and 5, puts "FizzBuzz"
    # Use if statements 2pts
    # Use the && operator 3pts

# Write a loop that will group the numbers from 1 through 50
# by whether they fizz, buzz, or fizzbuzz - 10pts


#solution 1

def fizzbuzz(num)
  collection = (1..num).to_a
  collection.each do |num|
    if (num % 3 == 0) && (num % 5 != 0)
      puts "Fizz #{num}"
    elsif (num % 5 == 0) && (num % 3 != 0)
      puts "Buzz #{num}"
    elsif (num % 3 == 0) && (num % 5 == 0)
      puts "FizzBuzz #{num}"
    end
  end
end

fizzbuzz(50)

#solution 2

def fizz(num)
  collection = (1..num).to_a
  collection.each do |num|
    if num % 3 == 0
      puts "#{num} Fizz"
    end
  end
end

def buzz(num)
  collection = (1..num).to_a
  collection.each do |num|
    if num % 5 == 0
      puts "#{num} Buzz"
    end
  end
end

def fizzbuzz_other(num)
  collection = (1..num).to_a
  collection.each do |num|
    if (num % 3 == 0) && (num % 5 == 0)
      puts "#{num} FizzBuzz"
    end
  end
end

fizz(50)
buzz(50)
fizzbuzz_other(50)


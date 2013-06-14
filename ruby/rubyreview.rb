# Testing / Assertion
# Define a method that takes two values and compares them, printing pass or fail

# assert_equal(1,1) #=> pass
# assert_equal(2,1) #=> fail
def assert_equal(actual, expected)
  if actual == expected
    "The method passes"
  else
    "The method fails"
  end
end

# Use assert to test the following:

# define a method that creates an Array of Greetings for every person's name
# greetings(["Bob", "Tim", "Jake"]) #=> ["Hello Bob!", "Hello Tim!", "Hello Jake!"]


def greetings(names)
  greets = []
  names.collect do |name|
    greets << "Hello #{name}!"
  end
  return greets
end


names = ["Brad", "Tim", "Jake"]

assert_equal(
  greetings(names),
  ["Hello Brad!", "Hello Tim!", "Hello Jake!"]
)

# define a method to sum the values of an array. Make this method defend against nils and
# other errors

def sum(numbers)
  sum = 0
  if numbers.nil? || numbers.empty?
    return 0
  else
    numbers.collect do |num|
      sum = sum + num if num.is_a?(Integer)
    end
    return sum
  end
end

assert_equal sum([]), 0
assert_equal sum([1,2]), 3
assert_equal sum([1,nil,2]), 3
assert_equal sum([1, "2", 2]), 3

# define a method that returns comfortable for temps between 60-80, cold for below and hot
# for above.

def temperature_bot(temp)
  if temp > 80
    return "hot"
  elsif temp> 50
    return "comfortable"
  else
    return "cold"
  end
end

assert_equal temperature_bot(65), "comfortable"
assert_equal temperature_bot(70), "comfortable"
assert_equal temperature_bot(85), "hot"
assert_equal temperature_bot(30), "cold"

# define an object, Person, that has a birthdate and a name. Define a method for a person
# that returns their age.

class Person
  attr_accessor(:name, :birthday)

  def age
    now = DateTime.now
      year_now = now.to_s.slice(0,4).to_i
        year_born= @birthday.slice(6,4).to_i
    return age =  year_now - year_born
  end
end



begin
  person = Person.new
  person.name = "Tim Berners-Lee"
  person.birthday = "06/08/1955"

  assert_equal person.name, "Tim Berners-Lee"
  assert_equal person.birthday, "06/08/1955"
  assert_equal person.age, 58

rescue => e
  puts "Fail: #{e}"
end
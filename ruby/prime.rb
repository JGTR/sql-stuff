def prime(number)
  answer = "prime"
  set = *(2..(number-1))
  set.each do |dividor|
    answer = "not prime" if (number%dividor == 0)
  end
  return answer
end


def prime(number)
  answer = "prime"
  set = *(2..(number-1))
  while answer == "prime"
    set.each do |dividor|
      answer = "not prime" if (number%dividor == 0)
    end
  end
  return answer
end

def prime?(number)
  count = 0
  prime = !(2..(number**(1/2))).any? do |int|
    number % int == 0
    count += 1
  end
  puts "Solved prime in #{count} steps"
  return prime
end


def assert(value)

  puts "Fail: #{value} "
end

# def prime(number)
#   answer = "prime"
#   set = *(2..(number-1))
#   while anser
#   set.each do |dividor|
#     if number.even?
#       answer = "not prime"
#     else (number%dividor == 0)
#       answer = "not prime" 
#     end
#   end
#     if answer = "not prime"
#       break
#     end
# end

# efficiency by avoiding numbers that are multiples of each other

remainder = number%dividor

set.each do |dividor|
  if (number%dividor == 0)


end

while remainder == 0 { 
  |dividor| remainder = number%dividor 


}

# exclude even numbers

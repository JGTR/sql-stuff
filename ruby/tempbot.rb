# Temperature bot is American but takes Celsius temperatures.
#
def temperature_bot(temp)
  case temp
  when 18..22
    "I like this temperature"
  else
    "This is uncomfortable for me"
  end
end

# temperature_bot(18)
#=> "I like this temperature"
# temperature_bot(21)
#=> "I like this temperature"
#temperature_bot(22)
#=> "This is uncomfortable for me"
#temperature_bot(-3)
#=> "This is uncomfortable for me"
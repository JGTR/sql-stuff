# seconds_in_minutes(1) #=> 60
# minutes_in_hours(1) #=> 60
# hours_in_days(1) #=> 24
# days_in_weeks(1) #=> 7
# weeks_in_years(1) #=> 52

def seconds_in_minutes(minutes = 1)
  minutes*60.0
end

def minutes_in_hours(hours = 1)
  hours*60.0
end

def hours_in_days(days = 1)
  days*24.0
end

def days_in_weeks(weeks = 1)
  weeks*7
end

def weeks_in_years(years = 1)
  years*52
end

def age_from_seconds(secs)
  secs/seconds_in_minutes/minutes_in_hours/hours_in_days/days_in_weeks/weeks_in_years
end

puts age_from_seconds(1111*1000000)


def hours_in_year(years)
  hours_in_days((days_in_weeks(weeks_in_years(years))))
end

puts hours_in_year(1)

def minute_in_decade(decade)
  years = decade * 10
  hours = hours_in_year(years)
  minutes_in_hours(hours)
end

def age_in_seconds(years)
  seconds_in_minutes(minutes_in_hours(hours_in_days(days_in_weeks(weeks_in_years(years)))))
end

puts age_in_seconds(28)

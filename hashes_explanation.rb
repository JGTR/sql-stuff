movies = {
  :comedy => ["Hitch", "The Big Lebowski"],
  :romance => ["Hitch", "4 Weddings and a Funeral"],
  :horror => ["The Shining", "American Movie"],
  :documentary => ["Thin Blue Line", "American Movie"]
}

  # what do we want a result to look like

  # {
  #   :"Hitch" => ["comedy", "romance"]
  #   :"The Big Lebowski" 

  # }

answer = {}

movies.each do |genre, movies|
  raise movies.inspect # ["Hitch", "The Big Lebowski"]
  # we need to consider movies individually
  if answer[movie.to_sym]
      answer[movie.to_sym] << genre
  else
    answer[movie.to_sym] = [genre]
end


# Alternative (better) solution:
  # answer[movie.to_sym] ||= [genre]
  # answer[movie.to_sym] << genre



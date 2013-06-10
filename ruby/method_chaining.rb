# Chain at least 5 method calls to an object. Reduce this operation one chain at a time.

# Don't just use the methods below, make up your own chain 
# and try to see if you can do something fun with Rubylike in the example.

some_words = [ "apple", "heresiarch", "cryptomania", "schmetterling", "win", "some"]


some_words[0].slice(0,1).concat(some_words[4].slice(0,1)).concat(some_words[1].slice(1,1)).concat(some_words.last).capitalize


# From [Rubeque](http://rubeque.com/problems/reverse-each-word)

# Write a method that takes a sentence and returns it with each word reversed in place.


# reverse_each_word.rb

# Write a method that takes a sentence and returns it with each word reversed in place.
# A String has many methods that can be called on it:
# http://www.ruby-doc.org/core-1.9.3/String.html


def reverse_each_word(sentence)
  sentence.split.collect {|x| x.reverse}.join(" ")
end

# reverse_each_word("Hello there, and how are you?")
#=> "olleH ,ereht dna woh era ?uoy"

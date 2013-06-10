# jukebox.rb


songs = [
  "The Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "The Phoenix - Consolation Prizes"
]

# list, play, help, exit


# list

def list(songs)
  i = 1
  songs.each do |song|
    puts "#{i} #{song}"
    i = i+1
  end
end

def play(songs)
  selection = 0
  unless (selection >= 1) && (selection <= songs.length)
    puts "Please enter the numerical selection of your song."
    selection = gets.chomp
    selection = selection.to_i - 1
  end
  puts "Now playing: #{songs[selection]}"
end

def helpme
  puts "Welcome to jukebox. 
  You can 'list' to see your songs. 
  You can 'play' to play a song. 
  You can ask for 'help' to see this again. 
  And you can 'exit' to leave!"
end


playing = true
entry = 0
helpme

while playing 
  puts "Tell us what you'd like to do:"
  entry = gets.strip.downcase
  case entry
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      helpme
    when "exit"
      playing = false
    else
      helpme
  end
end


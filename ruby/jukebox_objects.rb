# jukebox.rb

songs = [
  "The Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "The Phoenix - Consolation Prizes"]

links = [ 
  "http://www.youtube.com/watch?v=HL548cHH3OY",
  "http://www.youtube.com/watch?v=VARmJlPu6i4",
  "http://www.youtube.com/watch?v=K0g7R3xqdcM",
  "http://www.youtube.com/watch?v=0YuSg4mts9E",
  "http://www.youtube.com/watch?v=KkWm898ileE",
  "http://www.youtube.com/watch?v=9i1MXHGB8g0",
  "https://www.youtube.com/watch?v=gnkVUReUVpQ"]

class Song
  attr_accessor :id, :name, :artist, :link
  def open_video
    `open #{self.link}`
  end

  def playsong
    puts "Now playing #{self.name} by #{self.artist}"
  end
end

def add_songs(song_objects, song_list, link_list)
  song_list.each_with_index do |song, index|
    song = Song.new
    song.id = index+1
    songbits = song_list[index].split(" - ")
    song.name = songbits[1]
    song.artist = songbits[0]
    song.link = link_list[index]
    song_objects << song
  end
end

def list(song_objects)
  song_objects.each do |song|
    puts "#{song.id}: #{song.artist} - #{song.name}"
  end
end

def play(song_objects)
  selection = 0
  unless (selection >= 1) && (selection <= song_objects.length)
    puts "Please enter the numerical selection of your song."
    selection = gets.chomp
    selection = selection.to_i - 1
  end
  song_objects[selection].playsong
  song_objects[selection].open_video
end


def helpme
  puts "Welcome to jukebox. 
  You can 'list' to see your songs. 
  You can 'play' to play a song.
  You can ask for 'help' to see this again. 
  And you can 'exit' to leave!"
end

song_objects = []
add_songs(song_objects, songs, links)
playing = true
entry = 0

while playing 
  helpme
  puts "Tell us what you'd like to do:"
  entry = gets.strip.downcase
  case entry
    when "list"
      list(song_objects)
    when "play"
      play(song_objects)
    when "help"
      helpme
    when "exit"
      puts "Goodbye!"
      playing = false
    else
      TheGame.helpme
  end
end
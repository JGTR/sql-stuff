# Hashketball Nests
#
# Great news! You're going to an NBA game! The only catch is that you've been
# volunteered to keep stats at the game.
#
# Using Nested Hashes, define a game, with two teams, their players, and the players stats:
#
# The game has two teams.

$the_game = {

    :team_1 => { 
      :name => "the positive",
      :colors => { :home => "blue", :away => "white"},
      :players => 
          {
            :Shaq => 
              { :number => 12, :shoe_size => 14, :stats => 
                  { :points => 10, :rebounds => 5, :assists => 2, :steals => 1, :blocks => 2, :slam_dunks => 1 } 
              },
            :Jordan =>
                { :number => 23, :shoe_size => 12, :stats => 
                   { :points => 20, :rebounds => 3, :assists => 6, :steals => 4, :blocks => 0, :slam_dunks => 3 } 
                },
            :Iverson =>
                { :number => 15, :shoe_size => 11, :stats => 
                   { :points => 18, :rebounds => 1, :assists => 2, :steals => 2, :blocks => 0, :slam_dunks => 0 } 
                },
            :Stockton =>
                { :number => 45, :shoe_size => 11, :stats => 
                   { :points => 10, :rebounds => 0, :assists => 5, :steals => 1, :blocks => 0, :slam_dunks => 0 } 
                },
            :Pippen =>
                { :number => 9, :shoe_size => 13, :stats => 
                   { :points => 14, :rebounds => 5, :assists => 4, :steals => 1, :blocks => 1, :slam_dunks => 1 } 
                }
          } 
    },

    :team_2 => {
        :name => "dark matter",
        :colors => { :home => "black", :away => "grey-black" },
        :players => 
          {
            :Lebron => 
              { :number => 4, :shoe_size => 14, :stats => 
                  { :points => 10, :rebounds => 5, :assists => 2, :steals => 1, :blocks => 2, :slam_dunks => 1 } 
              },
            :Bryant =>
                { :number => 29, :shoe_size => 12, :stats => 
                   { :points => 20, :rebounds => 3, :assists => 6, :steals => 4, :blocks => 0, :slam_dunks => 3 } 
                },
            :Bird =>
                { :number => 32, :shoe_size => 11, :stats => 
                   { :points => 18, :rebounds => 1, :assists => 2, :steals => 2, :blocks => 0, :slam_dunks => 0 } 
                },
            :Anthony =>
                { :number => 40, :shoe_size => 11, :stats => 
                   { :points => 10, :rebounds => 0, :assists => 5, :steals => 1, :blocks => 0, :slam_dunks => 0 } 
                },
            :Rupaul =>
                { :number => 17, :shoe_size => 13, :stats => 
                   { :points => 14, :rebounds => 5, :assists => 4, :steals => 1, :blocks => 1, :slam_dunks => 1 } 
                }
          }
    }
}



#
# A team has:
# - A name
# - Two colors
#
# Each team should have at least 5 players
#
# Each player should have a:
# - name
# - number (like their jersey number)
# - shoe size
#
# Each player should have the following stats:
# - points
# - rebounds
# - assists
# - steals
# - blocks
# - slam dunks

# Using the power of Ruby, and the Hashes you created above, answer the following questions:
# Return the number of points scored for any player:

def points(player)
  if $the_game[:team_1][:players][player.to_sym]
    $the_game[:team_1][:players][player.to_sym][:stats][:points]
  else
  $the_game[:team_2][:players][player.to_sym][:stats][:points]
  end
end

points("Bryant")

# Return the shoe size for any player:

def shoe_size(player)
  if $the_game[:team_1][:players][player.to_sym]
    $the_game[:team_1][:players][player.to_sym][:shoe_size]
  else
    $the_game[:team_2][:players][player.to_sym][:shoe_size]
  end
end

shoe_size("Shaq"
  )
# Return both colors for any team:

def colors(team)
  $the_game[team.to_sym][:colors]
end

colors("team_1")
colors("team_2")


# Return both teams names:
def team_name(team)
  $the_game[team.to_sym][:name]
end

team_name("team_1")
team_name("team_2")


# Return all the player numbers for a team:

def numbers(team)
  numbers = []
  $the_game[team.to_sym][:players].each do |x,y|
  numbers << y[:number]
  end
  numbers
end

numbers("team_1")
numbers("team_2")

# Return all the stats for a player:
def stats(player)
  if $the_game[:team_1][:players][player.to_sym]
    $the_game[:team_1][:players][player.to_sym][:stats]
  else
    $the_game[:team_2][:players][player.to_sym][:stats]
  end
end

# Return the rebounds for the player with the largest shoe size
most_rebounds = Hash.new
dark_matter[:players].each do |x|
  x[:shoe_size][:stats][:rebounds]
  most_rebounds = {x[:shoe_size] => x[:shoe_size][:stats][:rebounds]}
end


def rebounds_largest_shoe
  shoe_sizes = []
  $the_game.each do |x,y|
    y[:players] do |a,b|
      if a == :shoe_size
        shoe_sizes << b
    end
  end
end


# Bonus Questions: define methods to return the answer to the following questions:
# Which player has the most points?
#

# Which team has the most points?
#

# Which player has the longest name?
#

# Super Bonus:
# Write a method that returns true if the player with the longest name had the most steals:
#
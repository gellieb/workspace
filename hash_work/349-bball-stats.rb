# This hash starts to mimic the real life json that is out there 
# in the world. Real json is often irregular and has some 
# twists and turns in and out of arrays and hashes. 
# It's critical to learn to navigate through json as a web dev! 
# Drill down carefully. Play with IRB or, better yet, binding pry.

require 'pry'

game = {
  :home => { :team_name => "Charlotte Hornets",
             :colors    => ["Turquoise", "Purple"],
             :players   => [
               {:player_name => "Jeff Adrien",
                :number => 4,
                :shoe_size => 18,
                :stats => {
                  :points => 10,
                  :rebounds => 1,
                  :assists => 1,
                  :steals => 2,
                  :blocks => 7,
                  :slam_dunks => 2
                 }
                },
               {:player_name => "Bismak Biyombo",
                :number => 0,
                :shoe_size => 16,
                :stats => {
                  :points => 12,
                  :rebounds => 4,
                  :assists => 7,
                  :steals => 7,
                  :blocks => 15,
                  :slam_dunks => 10
                  }
                },
               {:player_name => "DeSagna Diop",
                :number => 2,
                :shoe_size => 14,
                :stats => {
                  :points => 24,
                  :rebounds => 12,
                  :assists => 12,
                  :steals => 4,
                  :blocks => 5,
                  :slam_dunks => 5
                  }
                },
               {:player_name => "Ben Gordon",
                :number => 8,
                :shoe_size => 15,
                :stats => {
                  :points => 33,
                  :rebounds => 3,
                  :assists => 2,
                  :steals => 1,
                  :blocks => 1,
                  :slam_dunks => 0
                  }
                },
               {:player_name => "Brendan Haywood",
                :number => 33,
                :shoe_size => 15,
                :stats => {
                  :points => 6,
                  :rebounds => 12,
                  :assists => 12,
                  :steals => 22,
                  :blocks => 5,
                  :slam_dunks => 12
                  }
                }
              ]    
          },
  :away => { :team_name => "Brooklyn Nets",
             :colors => ["Black", "White"],
             :players => [
               {:player_name => "Alan Anderson",
                :number => 0,
                :shoe_size => 16,
                :stats => {
                  :points => 22,
                  :rebounds => 12,
                  :assists => 12,
                  :steals => 3,
                  :blocks => 1,
                  :slam_dunks => 1
                  }
                },
               {:player_name => "Reggie Evans",
                :number => 30,
                :shoe_size => 14,
                :stats => {
                  :points => 12,
                  :rebounds => 12,
                  :assists => 12,
                  :steals => 12,
                  :blocks => 12,
                  :slam_dunks => 7
                  }
                },
               {:player_name => "Brook Lopez",
                :number => 11,
                :shoe_size => 17,
                :stats => {
                  :points => 17,
                  :rebounds => 19,
                  :assists => 10,
                  :steals => 3,
                  :blocks => 1,
                  :slam_dunks => 15
                  }
                },
               {:player_name => "Mason Plumlee",
                :number => 1,
                :shoe_size => 19,
                :stats => {
                  :points => 26,
                  :rebounds => 12,
                  :assists => 6,
                  :steals => 3,
                  :blocks => 8,
                  :slam_dunks => 5
                  }
                },
               {:player_name => "Jason Terry",
                :number => 31,
                :shoe_size => 15,
                :stats => {
                  :points => 19,
                  :rebounds => 2,
                  :assists => 2,
                  :steals => 4,
                  :blocks => 11,
                  :slam_dunks => 1
                  }
                }
               ]
  
  }
}



# binding.pry 


puts "Q1:"
# Create method that can return the number of points scored for any player.

def players_score(hash, player)
  hash.each do |team, team_info|
    team_info[:players].each do |player_info, data|
      return player_info[:stats][:points] if player_info[:player_name]== player
    end
  end
end

puts players_score(game, "Jason Terry")



# end

# 
# iter = 0
# until (game[:home][:players].length)-1
#   puts "#{game[:home][:players][iter][:player_name]} has #{game[:home][:players][iter][:stats][:points]} points"
#   iter+=1
# end

puts "\nQ2:"
# Method that can return the shoe size for any player.
def sneaker_size(hash, player)
  hash.each do |team, team_info|
    team_info[:players].each do |player_info, data|
      return player_info[:shoe_size]if player_info[:player_name]== player
    end
  end
end

puts sneaker_size(game, "Jason Terry")



puts "\nQ3:"
# Method that returns both colors for any team.
def team_color(hash, team)
  hash.each do |location, team_info|
    return team_info[:colors] if team_info[:team_name]== team
    
  end
end
    

puts team_color(game, "Brooklyn Nets")



puts "\nQ4:"
# Method that returns both teams names.
def team_names(hash)
  hash.each do |location, team_info|
    team_info.each do |team_id, name|
      p name if team_id == :team_name
    end
  end
end
team_names(game)


puts "\nQ5:"
# Method that returns all the player numbers for a team.

def all_players(hash)
  hash.each do |team, team_info|
    team_info[:players].each do |player_info, data|
      p player_info[:player_name]
    end
  end
end

all_players(game)

puts "\nQ6:"
# Method that returns the rebounds for the player with the largest shoe size.
# I'm creating a method that returns the name of the player with the largest shoe size, 
#but it outputs 2 names (Jeff Adrien and Mason Plumlee, the last of the sorted array)
def largest_foot(hash)
  arr = []
  hash.each do |team_loc, team_hash|
    team_hash[:players].each do |player_id|
      arr << player_id[:shoe_size]
    end
  end
  hash.each do |team_loc, team_hash|
    team_hash[:players].each do |player_id|
      p player_id[:player_name] if player_id[:shoe_size]== arr.max
    end
  end
end

largest_foot(game)




puts "\nQ7:"
# Method that returns which player has the most points.



puts "\nQ8:"
# Method that returns Which team has the most points.


puts "\nQ9:"
# Method that returns which player has the longest name.


puts "\nQ10:"
# Method that returns true if the player with the longest name had the most steals










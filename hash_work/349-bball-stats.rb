# This hash starts to mimic the real life json that is out there 
# in the world. Real json is often irregular and has some 
# twists and turns in and out of arrays and hashes. 
# It's critical to learn to navigate through json as a web dev! 
# Drill down carefully. Play with IRB or, better yet, binding pry.
#require 'pry'
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



#binding.pry 
puts "Q1:"
# Create method that can return the number of points scored for any player.
iter = 0
until (game[:home][:players].length)-1
  puts "#{game[:home][:players][iter][:player_name]} has #{game[:home][:players][iter][:stats][:points]} points"
  iter+=1
end

puts "\nQ2:"
# Method that can return the shoe size for any player.



puts "\nQ3:"
# Method that returns both colors for any team.



puts "\nQ4:"
# Method that returns both teams names.



puts "\nQ5:"
# Method that returns all the player numbers for a team.



puts "\nQ6:"
# Method that returns the rebounds for the player with the largest shoe size.



puts "\nQ7:"
# Method that returns which player has the most points.



puts "\nQ8:"
# Method that returns Which team has the most points.


puts "\nQ9:"
# Method that returns which player has the longest name.


puts "\nQ10:"
# Method that returns true if the player with the longest name had the most steals


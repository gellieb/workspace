# Create a Jukebox program that takes four commands: list, play, help, exit
# and execute each of the commands. 
# The list command should execute 
# When you execute play, you should also be able to specify which song.
# You can make this as fancy or as simple as you'd like. 

songs = [
  "The Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "The Phoenix - Consolation Prizes"
]
puts "Welcome to Jukebox 1000"
puts 
puts "Please select from the following commands:"
puts "list, play, help, exit"
puts 
command = ""
while command != "exit"
  
  command = gets.chomp.downcase
  if command =="list"
    songs.each_with_index {|song, index| puts "#{index+1}. #{song}"}
    puts "Would you like to listen to anything?"
    puts "Please say a command."
    
  elsif command.start_with?("play")
    puts "Which song number do you want to play?"
    songs.each_with_index {|song, index| puts "#{index+1}. #{song}"}
      nonexistent_number = true
      while nonexistent_number
        song_number = gets.chomp.to_i
        if songs.size < song_number
          puts "This song choice does not exist."
          puts "Please make a different selection."
        else
          nonexistent_number= false
          puts "Now playing... #{song_number}. #{songs[song_number-1]}"
          puts "Enjoy!"
        end
      end
  elsif command.start_with?("help")
    puts "Command functions:"
    puts "List: lists all songs available in jukebox"
    puts "Play: select a song number from song list to play"
    puts "Help: lists command functions"
    puts "Exit: exits out of Jukebox 1000"
    puts "Say a command"
  else
    puts "Thanks for listening!" 
    break
  end  
  
end
puts "Hope you enjoyed our songs. To add to this song selection, please visit our website at www.jukebox1000.com."

# elsif command.include?("play") #what's wrong with this? include vs start with??
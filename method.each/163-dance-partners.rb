# Implement a game that creates new dancing partners for people. 
# Create a method that takes an array of existing dancing partner pairs 
# and returns new boy-girl pairs. Don't pair a person
# with someone of their own gender! An example run of the program:

dancers = [["Brad",  "Betty"],
           ["Paul",  "Paula"],
           ["Jon",  "Joanne"],
           ["Hal",   "Helen"]]

# So something like pair_mix(dancers) will output a new, mixed up 
# multi-dimensional array structured like the above. 


def pair_mix(list)
  iter = 0
  boys = []
  girls = []
  
  
  while iter < list.length
    boys << list[iter][0]
    girls << list[iter][1]
    iter+=1
  end
  boys.shuffle!
  girls.shuffle!
  new_pairs= []
  iter =0
  while iter < list.length
    new_pairs << [boys[iter],girls[iter]]
    #next if boys[iter]== "Brad" && (girls[iter]== "Paula")|| (girls[iter]== "Helen"||
    #(girls[iter]== "Betty")|| (girls[iter]== "Joanne")
    
  
    iter+=1
  end
      
      
 
  #p boys
  #p girls
   new_pairs
end
p pair_mix(dancers)
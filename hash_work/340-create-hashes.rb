# Create three different sets of hashes using mix of nested hashes and/or nested arrays as much as you'd like.

# Movie collection by genre and by movie titles
movies = { 
	:romantic => ["The Notebook", "Love in Time of Cholera"],
	:action => ["Superman", "Batman", "Spiderman"],
	:animation => ["Spirited Away", "Attack on Titan"]
}


# Recipes by food and by ingredients 
recipes = {
	"desserts" => [:pies=> {"pumpkin" =>["pumpkin puree","condensed milk", "graham crackers"], "apple" => ["apples", "brown sugar","flour"], "cherry"=> ["pitted cherries", "granulated sugar", "pie crust"]}, 
		:ice_cream => {"strawberry" =["chopped strawberries", "heavy cream"], "coffee"= ["coffee liquer", "cream"], "vanilla"= ["vanilla bean", "cream"]}},
	"appetizers" => [:soups=> {"chicken noodle"=> ["chicken", "water", "celery"], "new england clam chowder"=> ["potatoes", "heavy cream", "clams"]}],
}



# User profiles where each user has a favorite color and also a collection of essays


user_profiles = {
	"Lance Harper"=> [{:color => "green"}, {:essays => ["essay_1", "essay_2", "essay_3"]}],
	"Rachael Han" => [{:color=> "white"}, {:essays => ["essay_1", "essay_2", "essay_3"]}],
	"Patrick Barry" => [{:color=> "blue"}, {:essays => ["essay_1", "essay_2", "essay_3"]}],
	"Angel Baek" => [{:color=> "red"}, {:essays => ["essay_1", "essay_2", "essay_3"]}]


}
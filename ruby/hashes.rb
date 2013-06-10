# Create Hashes for the following use-cases.

# 1  A movie collection that organizes by genres
# 2 Recipes with ingredients
# 3 User profiles where each user has a list of favorite colors along with 3 personal essays, essay_1, essay_2, essay_3
# Just be creative, create a bunch of fake data just for the practice of how you would store this data in a structured hash. 
# Feel free to create a single file, hashes.rb with a bunch of these and send them to me for review. 
# There are really no wrong answers - there are just more logical ways of storing this sort of data.

#1 

movies = {
  :accion_adventure => {"Terminator" =>"James Cameron", "Gladiator" => "Ridley Scott", "Indiana Jones" => "Steven Spielberg"},
  :scifi => {"Star Wars" =>"George Lucas", "Gattacca"=>"TBD", "Star Trek"=>"TBD"},
  :drama => {"Godfather" => "Francis Coppola", "Bleu" => "Kieslowski", "Red Violin" => "TBD"}
}

movies[:scifi]
movies [:scifi]["Gattacca"]
 
#2 

recipes = { 
  :italian => ["spaghetti", "tomato sauce"], 
  :mexican => ["tortillas", "cheese", "huitlacoche"]
  :japanese => ["rice", "salmon", "wasabi", "soy sauce"]
}

#3 

user_profiles =  {
  :user_1 => {:essay_1 => "blah blah", :essay_2 => "blah blah", :essay_3 => "blah blah"},
  :user_2 => {:essay_1 => "blah blah", :essay_2 => "blah blah", :essay_3 => "blah blah"},
  :user_3 => {:essay_1 => "blah blah", :essay_2 => "blah blah", :essay_3 => "blah blah"}
}







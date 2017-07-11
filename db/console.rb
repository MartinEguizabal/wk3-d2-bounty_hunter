require('pry')
require_relative('../models/space_cowboys.rb')

SpaceCowboy.delete_all

space_cowboy1 = SpaceCowboy.new("name" => "Boba Fett", "bounty_value" => 2, "homeworld" => "Wacky Land", "favourite_weapon" => "Laser Blaster")
# space_cowboy2 = SpaceCowboy.new(name: "Han Solo", bounty_value: 10, homeworld: "Tatooine", favourite_weapon: "Sonic Blaster")
# space_cowboy3 = SpaceCowboy.new(name: "Spike Speigel", bounty_value: 5, homeworld: "Earth", favourite_weapon: "Hands")


space_cowboy1.save()
# space_cowboy2.save()
# space_cowboy3.save()
# space_cowboy3.delete()



# space_cowboy1.bounty_value = 100
# p SpaceCowboy.all

# space_cowboy1.update()

test =  SpaceCowboy.all
# binding.pry
p test
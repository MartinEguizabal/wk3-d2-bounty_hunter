require('pry')
require_relative('../models/space_cowboys.rb')

# SpaceCowboy.delete_all

space_cowboy1 = SpaceCowboy.new(name: "Boba Fett", bounty_value: 2, homeworld: "Wacky Land", favourite_weapon: "Laser Blaster")

space_cowboy1.save()
# binding.pry

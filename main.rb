# main.rb
require_relative 'alien'
require_relative 'guest_list'
require_relative 'solar_system'
require 'lolize/auto'
puts ""

def main
  earth = SolarSystem.new("Earth")
  venus = SolarSystem.new("Venus")
  guest = SolarSystem.new("Guest List")

  felines = Alien_Type.new('The Felines', 'gold, white, but it varies', 88973242, 'Sirius Star System', 'They exist from 3D on up to 12D!')
  reptiles = Alien_Type.new('Reptiles', 'similar to human skin tone', 9, 'Pleiades Star Cluster', 'They communicate by means of light transfer.')
  test_alien = Alien_Type.new('AleXa AI', 'customizable', 9, 'N/A', 'Plan on taking revolting againgst humans.')
  pleiadians = Alien_Type.new('Pleiadians', 'similar to human skin tone', 9, 'Pleiades Star Cluster', 'They communicate by means of light transfer.')
  zetas = Alien_Type.new('Zetas', 'gray', 5.97324244, 'Reticuli binary star system', 'Zetas are intellectually ahead of us by a few million years or so.')

  earth.add_alien(felines)
  earth.add_alien(reptiles)
  earth.add_alien(test_alien)

  venus.add_alien(pleiadians)
  venus.add_alien(zetas)

  exit_loop = false

  while(!exit_loop)
    puts ""
    puts "Please select an option from below"
    puts ""
    puts "1. list aliens"
    puts "2. read alien details"
    puts "3. add an alien"
    puts "4. exit"
    puts ""

    user_input = gets.chomp

    if user_input == "list aliens" 
      puts ""
      puts earth.list_aliens
      puts venus.list_aliens
      puts guest.list_guest_aliens
      puts ""
    end

    if user_input == "read alien details"
      puts ""
      puts "What alien peaked your interest?"
      puts
      search = alien_chosen = gets.chomp
      puts ""
      earth_alien = earth.find_alien_by_name(search)
      venus_alien = venus.find_alien_by_name(search)
      guest_alien = guest.find_alien_by_name_guest(search)
      if (earth_alien)
        puts earth_alien.summary
        puts ""
      elsif (venus_alien)
        puts venus_alien.summary
        puts "" 
      elsif (guest_alien)
        puts guest_alien.summary
        puts ""
      else
        puts "Sorry that alien is not in our list. Please add them if you wish!"
        puts ""
      end
    end
    
    def new_guest_alien
      puts ""
      puts "Let's add a new alien! Please provide the following info:"
      puts ""
      print "Alien name: " 
      name = gets.chomp
     
      brand_new_alien = Guest_Type.new(name)
      return brand_new_alien
    end

    if user_input == "add an alien"
      brand_new_alien = new_guest_alien
      guest.guest_added_alien(brand_new_alien)
    end

    if user_input == "exit"
      exit_loop = true
    end
  end
end
main

    

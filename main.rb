# main.rb
require_relative 'alien'
require_relative 'solar_system'
require 'colorize'
puts ""
def main
  earth = SolarSystem.new("Earth")
  venus = SolarSystem.new("Venus")
  mars = SolarSystem.new("Mars")

 guest = SolarSystem.new("Guest List")

  zetas = Alien_Type.new('Zetas', 'gray', 5.97324244, 'Reticuli binary star system', 'Zetas are intellectually ahead of us by a few million years or so.')
  felines = Alien_Type.new('The Felines', 'gold, white, but it varies', 88973242, 'Sirius Star System', 'They exist from 3D on up to 12D!')
  pleiadians = Alien_Type.new('Pleiadians', 'similar to human skin tone', 9, 'Pleiades Star Cluster', 'They communicate by means of light transfer.')

  # earth.add_alien(felines)
  # venus.add_alien(pleiadians)
  # mars.add_alien(zetas)
  # guest.user_added_alien


  exit_loop = false

  while(!exit_loop)
    puts "Please select an option from below"
    puts ""
    puts "1. list aliens"
    puts "2. read alien details"
    puts "3. add an alien"
    puts "4. exit"
    puts ""

    user_input = gets.chomp

    if user_input == "list aliens"
      puts guest.list_user_aliens.colorize(:light_blue)
      # puts venus.list_aliens.colorize(:light_magenta)
      # puts mars.list_aliens.colorize(:light_red)
      puts ""
    end

    def add_alien1
      puts ""
      puts "Let's add a new alien! Please provide the following info:"
      puts ""
      print "Alien name: " 
      name = gets.chomp
      print "Alien color: "
      color = gets.chomp
      print "Alien home, star system or star cluster etc. "
      home = gets.chomp
      print "Alien's distance from the sun in light years: "
      distance = gets.chomp
      print "Fun fact about the alien: "
      fun_fact = gets.chomp
      puts ""
    
      brand_new_alien = Alien_Type.new(name, color, home, distance, fun_fact)
      return brand_new_alien
    end

    if user_input == "add an alien"
      brand_new_alien = add_alien1
      guest.user_added_alien(brand_new_alien)

      
    end

    if user_input == "read alien details"
      puts ""
      puts "What alien peaked your interest?"
      puts
      search = alien_chosen = gets.chomp
      puts ""
      found_alien = earth.find_alien_by_name(search)
      found_alien = venus.find_alien_by_name(search)
      found_alien = mars.find_alien_by_name(search)
      if (found_alien)
        puts found_alien.summary.colorize(:yellow)
        puts ""
      else
        puts "Sorry that alien is not in our list, please add them if you wish!"
        puts ""
      end
    end

    if user_input == "exit"
      exit_loop = true
    end
  end
end
main

    

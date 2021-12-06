class GuestList
  attr_reader :name, :alien_types
  def initialize(name)
    @name = name
    @alien_types = []
  end
  def summary
    return "#{name}"
  end

  def add_alien(alien)
    @alien_types.push(alien)
  end

  def find_alien_by_name(search)
    found_alien = @alien_types.find do |alien|
      alien.name == search
    end
    return found_alien
  end

  def list_aliens
    puts
    alien_list = "Guest List"
    # Note: We can use planets, @planets, or self.planets
    @alien_types.each_with_index do |alien, index|
      alien_list+= "\n #{index+1}: #{alien.name}"
    end
    return alien_list
  end
end


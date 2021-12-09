class SolarSystem
  attr_reader :p_name
  def initialize(p_name)
    @p_name = p_name
    @alien_types = []
    @user_types = []
  end

  def summary
    return "#{p_name}"
  end

  def add_alien(alien)
    @alien_types.push(alien)
  end

  def user_added_alien(alien)
    @user_types.push(alien)
  end

  def find_alien_by_name(search)
    found_alien = @alien_types.find do |alien|
      alien.name == search
    end
    return found_alien
  end

  def list_aliens
    puts
    alien_list = "Alien races living on #{@p_name}"
    # Note: We can use planets, @planets, or self.planets
    @alien_types.each_with_index do |alien, index|
      alien_list+= "\n #{index+1}: #{alien.name}"
    end
    return alien_list
  end

  def list_user_aliens
    puts ""
    alien_user_list = "Alien races from #{@p_name}"
    # Note: We can use planets, @planets, or self.planets
    @user_types.each_with_index do |alien, index|
      alien_user_list+= "\n #{index+1}: #{alien.name}"
    end
    return alien_user_list if @user_types.count > 0
  end
end


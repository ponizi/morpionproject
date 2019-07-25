class Player
  attr_accessor :name
  attr_accessor :choice
  def initialize(name_to_save)
    @name = name_to_save
  end
  
  def show_turn
    return "#{@name} est le joueur n°#{@turn}"
  end
end
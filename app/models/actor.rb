class Actor < ActiveRecord::Base
  has_many :characters 
  has_many :shows, through: :characters

  def full_name
   "#{self.first_name} #{self.last_name}"
  end
  #-- rake console --#
  ## Actor.first.first_name => returns the first actor first name
  ## Actor.frist.last_name => returns the first actor last name

  def list_roles
    self.characters.map {|character| "#{character.name} - #{character.show.name}"}
  end
  #-- rake console -- #
  ## Actor.first.characters => returns all the characters belong to the first actor
  ## Character.first.name => returns the name for the first character
  ## Character.first.show.name => returns the show name for the first character

end
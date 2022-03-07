class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        self.actors.map { |actor| actor.full_name }
    end
    #-- rake console --#
    ## Show.first.actors => returns a list of actors in the first show
    ## Actor.first.full_name => returns the first actor full name 
end
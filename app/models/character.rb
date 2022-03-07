class Character < ActiveRecord::Base
    belongs_to :actor
    belongs_to :show

    def say_that_thing_you_say
     "#{self.name} always says: #{self.catchphrase}"
    end
    ##-- rake console -- ##
    #Character.first.name => return the name of the first character
    #Character.first.catchphrase => return the catchphrase for the first character
    ##-- testing ---##
    # a = Character.first
    # a.catchphrase = 'A Lannister always pays his debts'
    # a.say_that_thing_you_say 

end
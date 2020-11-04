class Character < ActiveRecord::Base
    belongs_to :actor
    belongs_to :show


    def say_that_thing_you_say
#        binding.pry
        self.name + " always says: " + self.catchphrase
#        self.catchphrase


 #       expected: "Steve Urkel always says: Did I do that?"
#        binding.pry
    end

end
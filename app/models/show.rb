class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        #returns an Array of the full names of each actor associated with the a show. Remember, a show should have many actors through characters.
        return_array = []
        show_id = self.id
        Character.where(show_id: show_id).collect do |i|
            actor_id = i.actor_id
            each_actor = Actor.where(id: actor_id)[0]
            return_array << (each_actor.first_name + " " + each_actor.last_name)
        end
        return_array
    end

end
class Actor < ActiveRecord::Base
   has_many :characters
   has_many :shows, through: :characters

    def full_name
        name = []
        name << self.first_name
        name << self.last_name
        name.join(" ")
        #should return first & last name of actor
    end

    def list_roles
        #binding.pry
        array_return = []
        my_id = self.id
        character = Character.find_or_create_by(actor_id: 1).name
        show_id = Character.find_or_create_by(actor_id: 1).show_id
        show = Show.find_or_create_by(id: show_id).name
        array_return << character + " - " + show
    end

end
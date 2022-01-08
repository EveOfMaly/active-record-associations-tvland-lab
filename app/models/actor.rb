class Actor < ActiveRecord::Base

    has_many :characters
    has_many :shows, through: :characters


    def full_name 
        "#{self.first_name + " " + self.last_name}"
    end


    def list_roles

        roles = []

        self.shows.each do |show|
            self.characters.each do |char|
                if char.show_id == show.id 
                   roles <<  "#{char.name} - #{show.name}"
                end
            end
        end

        roles.join(" ")
    end
  
end
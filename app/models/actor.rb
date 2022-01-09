class Actor < ActiveRecord::Base

    has_many :characters
    has_many :shows, through: :characters


    def full_name 
        "#{self.first_name + " " + self.last_name}"
    end


    def list_roles

        #using each 
        # roles = []

        # self.shows.each do |show|
        #     self.characters.each do |char|
        #         if char.show_id == show.id 
        #            roles <<  "#{char.name} - #{show.name}"
        #         end
        #     end
        # end
     

        # roles.join(" ")

        #using collect + character
        Character.all.collect do |char|
            "#{char.name} - #{char.show.name}"
        end
    end
  
end
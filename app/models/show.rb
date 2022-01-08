class Show < ActiveRecord::Base
    has_many :characters 
    has_many :actors, through: :characters
    belongs_to :network


    def actors_list 
        actor_list = []

        self.actors.each do |actor|
            actor_list << "#{actor.first_name + " " + actor.last_name}"
        end

        actor_list
    end



    def build_network(network_attr)
        network = Network.new(network_attr)
        network.shows << self
        network
    end


end
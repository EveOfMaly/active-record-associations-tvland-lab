class AddActorsToShow < ActiveRecord::Migration[5.1]


    def change
        add_column :shows, :actor_id, :integer
    end


end
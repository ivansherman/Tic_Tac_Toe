class CreateGames < ActiveRecord::Migration
   def self.up
    create_table :games do |t|
      t.column :title, :string, :limit => 100, :null => false
      t.column :created_on, :datetime, :null => false
      t.column :updated_on, :datetime, :null => false

	  	t.column :player_o_id, :int, :null => false
	    t.column :player_x_id, :int, :null => false
	    t.column :winner_id, :int, :null => true
	    t.column :is_tie_game, :boolean, :null => false, :default => false
    end
  end

  def self.down
    drop_table :games
  end
end


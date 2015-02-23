class CreateMoves < ActiveRecord::Migration
  def self.up
    create_table :moves do |t|
      t.column :title, :string, :limit => 100, :null => false
      t.column :created_on, :datetime, :null => false
      t.column :updated_on, :datetime, :null => false
	  
	  	t.column :game_id, :int, :null => false
	  	t.column :player_id, :int, :null => false
	  	t.column :x_axis, :int, :null => false
	  	t.column :y_axis, :int, :null => false
    end
  end

  def self.down
    drop_table :moves
  end
end

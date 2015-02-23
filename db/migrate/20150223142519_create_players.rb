class CreatePlayers < ActiveRecord::Migration
  def self.up
    create_table :players do |t|
      t.column :title, :string, :limit => 100, :null => false
      t.column :created_on, :datetime, :null => false
      t.column :updated_on, :datetime, :null => false
	  
	  	t.column :session_string, :string, :limit => 255, :null => true
    end
  end

  def self.down
    drop_table :players
  end
end
class Player < ActiveRecord::Base
	validates_presence_of :title
	
	has_many :games, :foreign_key => 'player_x_id', :class_name => 'Game'
	
	# returns the total number of games played
	# note that this includes the current game as well, even if it has not been completed
	# a better name might have been get_total_games or get_total_games_playing
	def get_total_games_played
		return games.size
	end

	def get_total_games_won
		return Game.find(:all, :conditions => ["winner_id = ?", self]).size
	end

	def get_total_games_equalized
		return Game.find(:all, :conditions => ["player_x_id = ? and is_tie_game = true", self]).size
	end	
	
	def get_total_games_lost
		return get_total_games_played - (get_total_games_won + get_total_games_equalized) - 1
	end
end
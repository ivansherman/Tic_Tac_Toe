class ApplicationController < ActionController::Base
  
  def current_user
    if session[:player_id].nil? then
      session[:player_id] = Player.create(:title => 'player').id
    end

    return @current_user ||= Player.find_by_id(session[:player_id])
  end
end
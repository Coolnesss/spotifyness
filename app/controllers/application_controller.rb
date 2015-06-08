class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  attr_accessor :search_word

  helper_method :get_albums

  def get_albums(keyword)
    RSpotify::Album.search(keyword)
  end

end

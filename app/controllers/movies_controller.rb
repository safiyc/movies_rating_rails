class MoviesController < ApplicationController
  before_action :prevent_unauthorized_user_access, only: [:new, :edit]
  
  def index
    @movies = Movie.all
    render :index
  end
end

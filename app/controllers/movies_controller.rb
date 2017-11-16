class MoviesController < ApplicationController
  before_action :prevent_unauthorized_user_access, only: [:new, :edit]

  def index
    @movies = Movie.all
    render :index
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = current_user.movies.new(movie_params)

    if @movie.save
      redirect_to root_path, notice: "Link successfully created"
    else
      render :new
    end
  end

  def edit
    movie = Movie.find_by(id: params[:id])

    if current_user.owns_movie?(movie)
      @movie = movie
    else
      redirect_to root_path, notice: "Not authorized to edit this movie"
    end
  end

  def destroy
    movie = Movie.find_by(id: params[:id])

    if current_user.owns_movie?(movie)
      movie.destroy
      redirect_to root_path, notice: "Movie deleted"
    else
      redirect_to root_path, notice: "Not authorized to delete this movie"
    end
  end

  def movie_params
    params.require(:movie).permit(:title, :description, :genre, :release_date)
  end
end

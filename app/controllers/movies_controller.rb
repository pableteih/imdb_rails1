class MoviesController < ApplicationController
  def index
    @movie = Movie.all
  end

  def create
    @movie= Movie.new(movie_params)
  
    if @movie.save
      redirect_to movies_index_path
    else
      render :new
    end

  



  end

  def new
  end

  def movie_params
    params.require(:post).permit(:name, :synopsis, :director)
  end
end

class SeriesController < ApplicationController
  def index
    @serie = Serie.all
  end

  def create
    @serie= Serie.new(serie_params)
    
    if @serie.save
      redirect_to series_index_path
    else
      render :new
    end

  
  end

  def new
  end

  def serie_params
    params.require(:post).permit(:name, :synopsis, :director)
  end
end
class DocumentaryFilmsController < ApplicationController
  def index
    @documentaryfilm = Documentaryfilm.all
  end

  def create
    @documentaryfilm= Documentaryfilm.new(documentaryfilm_params)
   
    if @documentaryfilm.save
      redirect_to documentary_films_index_path
    else
      render :new
    end

  



  end

  def new
  end

  def documentaryfilm_params
    params.require(:post).permit(:name, :synopsis, :director)
  end
end

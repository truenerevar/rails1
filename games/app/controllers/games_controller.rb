class GamesController < ApplicationController
def index
	@game = Game.all
end

def show			
	@game = Game.find(params[:id])
end

def new
end

def edit
  @game = Game.find(params[:id])
end
		
def create
  @game = Game.new(game_params)
 
  @game.save
  redirect_to @game
end

def update
  @game = Game.find(params[:id])
 
  if @game.update(game_params)
    redirect_to @game
  else
    render 'edit'
  end
end

def destroy
  @game = Game.find(params[:id])
  @game.destroy
 
  redirect_to games_path
end
 
private
  def game_params
    params.require(:game).permit(:title, :text)
  end
end

class ClubsController < ApplicationController
def index
	@club = Club.all
end

def show			
	@club = Club.find(params[:id])
end

def new
end

def edit
  @club = Club.find(params[:id])
end
		
def create
  @club = Club.new(club_params)
 
  @club.save
  redirect_to @club
end

def update
  @club = Club.find(params[:id])
 
  if @club.update(club_params)
    redirect_to @club
  else
    render 'edit'
  end
end

def destroy
  @club = Club.find(params[:id])
  @club.destroy
 
  redirect_to clubs_path
end
 
private
  def club_params
    params.require(:club).permit(:title, :date)
  end
end

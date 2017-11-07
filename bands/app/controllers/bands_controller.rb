class BandsController < ApplicationController
def index
	@band = Band.all
end

def show			
	@band = Band.find(params[:id])
end

def new
end

def edit
  @band = Band.find(params[:id])
end
		
def create
  @band = Band.new(band_params)
 
  @band.save
  redirect_to @band
end

def update
  @band = Band.find(params[:id])
 
  if @band.update(band_params)
    redirect_to @band
  else
    render 'edit'
  end
end

def destroy
  @band = Band.find(params[:id])
  @band.destroy
 
  redirect_to bands_path
end
 
private
  def band_params
    params.require(:band).permit(:title, :text)
  end
end

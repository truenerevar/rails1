class PlanesController < ApplicationController
def index
	@plane = Plane.all
end

def show			
	@plane = Plane.find(params[:id])
end

def new
end

def edit
  @plane = Plane.find(params[:id])
end
		
def create
  @plane = Plane.new(plane_params)
 
  @plane.save
  redirect_to @plane
end

def update
  @plane = Plane.find(params[:id])
 
  if @plane.update(plane_params)
    redirect_to @plane
  else
    render 'edit'
  end
end

def destroy
  @plane = Plane.find(params[:id])
  @plane.destroy
 
  redirect_to planes_path
end
 
private
  def plane_params
    params.require(:plane).permit(:title, :text)
  end
end

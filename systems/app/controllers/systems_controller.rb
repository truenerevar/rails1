class SystemsController < ApplicationController
def index
	@system = System.all
end

def show			
	@system = System.find(params[:id])
end

def new
end

def edit
  @system = System.find(params[:id])
end
		
def create
  @system = System.new(system_params)
 
  @system.save
  redirect_to @system
end

def update
  @system = System.find(params[:id])
 
  if @system.update(system_params)
    redirect_to @system
  else
    render 'edit'
  end
end

def destroy
  @system = System.find(params[:id])
  @system.destroy
 
  redirect_to systems_path
end
 
private
  def system_params
    params.require(:system).permit(:title, :text)
  end
end

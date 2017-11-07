class WebsController < ApplicationController
def index
	@web = Web.all
end

def show			
	@web = Web.find(params[:id])
end

def new
end

def edit
  @web = Web.find(params[:id])
end
		
def create
  @web = Web.new(web_params)
 
  @web.save
  redirect_to @web
end

def update
  @web = Web.find(params[:id])
 
  if @web.update(web_params)
    redirect_to @web
  else
    render 'edit'
  end
end

def destroy
  @web = Web.find(params[:id])
  @web.destroy
 
  redirect_to webs_path
end
 
private
  def web_params
    params.require(:web).permit(:title, :text)
  end
end

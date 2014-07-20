class ClothsController < ApplicationController

def index
	@cloths=Cloth.all
end

def new
	@cloth=Cloth.new
end

def create
	@cloth=Cloth.new(cloth_params)
	if @cloth.save
	redirect_to cloths_path
   else
   	render :new
   end
end

def edit
	@cloth=Cloth.find(params[:id])
end

def update
	@cloth=Cloth.find(params[:id])
	@cloth.update
	redirect_to coloths_path
end

def show
	@cloth=Cloth.find(params[:id])
end

def destroy
	@cloth=Cloth.find(params[:id])
	@cloth.destroy
	redirect_to coloths_path
end


private

def cloth_params
	params.require(:cloth).permit(:name,:color,:size,:production,:price,:amount)
end


end

class ShoesController < ApplicationController

def index
	@shoes=Shoe.all
end

def new
	@shoe=Shoe.new
end

def create
	@shoe=Shoe.new(shoe_params)
   if @shoe.save                          #條件式  若儲存時則回到index頁面
	redirect_to shoes_path
   else
   	render :new                           #否則會到new頁面
   end
end

def show
	@shoe=Shoe.find(params[:id])
end

def edit
	@shoe=Shoe.find(params[:id])
end

def update
	@shoe=Shoe.find(params[:id])
	shoe.update
	redirect_to shoes_path
end

def destroy
	@shoe=Shoe.find(params[:id])
	@shoe.destroy
	redirect_to shoes_path
end

private

def shoe_params
	params.require(:shoe).permit(:name,:color,:size,:production,:price,:amount)
end

end

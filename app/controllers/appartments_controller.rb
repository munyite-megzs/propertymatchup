class AppartmentsController < ApplicationController
	def new
		
		
	end

	def create
  @appartment = Appartment.new(appartment_params)
 
   @appartment.save
  redirect_to @appartment
end

def show
	@appartment = Appartment.find(params[:id])
	
end
 
private
  def appartment_params
    params.require(:appartment).permit(:title, :description)
  end
end

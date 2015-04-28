class AppartmentsController < ApplicationController
	def index
		@appartments = Appartment.all
		
	end

	def new
		@appartment = Appartment.new
		
		
	end

	def edit
		@appartment = Appartment.find(params[:id])
		
	end

	def update
		@appartment = Article.find(params[:id])
		if @article.update(appartment_params)
			redirect_to @appartment
		else
			render 'edit'
		end
		
	end

	def create
  @appartment = Appartment.new(appartment_params)
 
   if @appartment.save

  redirect_to @appartment
else
	render 'new'
end
end

def show
	@appartment = Appartment.find(params[:id])
	
end

def destroy
    @appartment= Appartment.find(params[:id])
    @appartment.destroy
 
    redirect_to appartments_path
  end
 
private
  def appartment_params
    params.require(:appartment).permit(:title, :description)
  end
end

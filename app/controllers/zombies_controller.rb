class ZombiesController < ApplicationController
  def new
  	@zombie = Zombie.new
  end
  def show
  	@zombie = Zombie.find(params[:id])
  end
  def create
  	@zombie = Zombie.new(zombie_params)
  if @zombie.save
  	sign_in @zombie
  	 flash[:success] = "Welcome to the Nifty Twitter!"
  	redirect_to @zombie  		
  else 
  	render 'new'
  end
end
def destroy
	@zombie.destroy
	end

private 
def zombie_params
	params.require(:zombie).permit(:name,:email,:password,:password_confirmation)
end

end

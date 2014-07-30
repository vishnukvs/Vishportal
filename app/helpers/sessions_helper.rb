module SessionsHelper
	
	def current_zombie=(zombie)
    @current_zombie = zombie
  end

  def current_zombie
    remember_token = Zombie.digest(cookies[:remember_token])
    @current_zombie ||= Zombie.find_by(remember_token: remember_token)
  end
def sign_out
    current_zombie.update_attribute(:remember_token,
                                  Zombie.digest(Zombie.new_remember_token))
    cookies.delete(:remember_token)
    self.current_zombie = nil
  end
  
  
end

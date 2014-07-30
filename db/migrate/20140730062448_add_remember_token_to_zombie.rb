class AddRememberTokenToZombie < ActiveRecord::Migration
  def change
  	 	add_column :zombies, :remember_token, :string
    	add_index  :zombies, :remember_token
  	end
  end


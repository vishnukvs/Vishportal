class AddIndexToZombie < ActiveRecord::Migration
  def change
  	add_index :zombies,:email, unique: true
  end
end

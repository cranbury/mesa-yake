class AddNicknameToRestaurants < ActiveRecord::Migration[5.2]
  def change
   add_column :restaurants, :nickname, :string
  end
end

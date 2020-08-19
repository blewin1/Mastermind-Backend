class AddGameDataToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :game_data, :string
  end
end

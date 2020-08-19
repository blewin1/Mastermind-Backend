class AddGameTypeToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :game_type, :string, :default => '4x6'
  end
end

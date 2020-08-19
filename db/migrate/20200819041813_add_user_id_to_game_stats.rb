class AddUserIdToGameStats < ActiveRecord::Migration[6.0]
  def change
    add_column :game_stats, :user_id, :integer
  end
end

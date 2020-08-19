class CreateGameStats < ActiveRecord::Migration[6.0]
  def change
    create_table :game_stats do |t|
      t.string :mode
      t.integer :wins
      t.integer :losses
      t.float :avg_rows
      t.integer :least_rows

      t.timestamps
    end
  end
end

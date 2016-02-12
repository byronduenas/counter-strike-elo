class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.references :winner, references: :team, index: true, foreign_key: true
      t.references :loser, references: :team, index: true, foreign_key: true
      t.integer :winner_score
      t.integer :loser_score
      t.references :map, index: true, foreign_key: true
      t.datetime :date

      t.timestamps null: false
    end
  end
end

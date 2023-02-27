class CreatePieces < ActiveRecord::Migration[7.0]
  def change
    create_table :pieces do |t|
      t.references :channel, null: false, foreign_key: true
      t.references :piece_name, null: false, foreign_key: true
      t.string :lot
      t.integer :weight

      t.timestamps
    end
  end
end

class CreateHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :histories do |t|
      t.string :code
      t.date :date
      t.string :client
      t.string :lot
      t.string :item

      t.timestamps
    end
  end
end

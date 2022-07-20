class CreateCompositions < ActiveRecord::Migration[7.0]
  def change
    create_table :compositions do |t|
      t.integer :qty
      t.references :lot, null: false, foreign_key: true
      t.references :bottle, null: false, foreign_key: true

      t.timestamps
    end
  end
end

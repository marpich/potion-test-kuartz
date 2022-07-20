class CreateLots < ActiveRecord::Migration[7.0]
  def change
    create_table :lots do |t|
      t.string :name
      t.integer :remaining_qty

      t.timestamps
    end
  end
end

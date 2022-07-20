class CreateBottles < ActiveRecord::Migration[7.0]
  def change
    create_table :bottles do |t|
      t.integer :qty
      t.string :label

      t.timestamps
    end
  end
end

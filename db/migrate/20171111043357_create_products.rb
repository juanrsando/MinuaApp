class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :stock
      t.text :description
      t.references :category
      t.string :size
      t.string :color
      t.float :price

      t.timestamps
    end
  end
end

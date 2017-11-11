class CreateCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :carts do |t|
      t.boolean :open
      t.references :user
      t.references :payment
      t.float :grand_total

      t.timestamps
    end
  end
end

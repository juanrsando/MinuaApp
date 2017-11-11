class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.string :url
      t.references :product, foreign_key: true
      t.references :category, foreign_key: true
      t.text :note

      t.timestamps
    end
  end
end

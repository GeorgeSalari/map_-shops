class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.string :category

      t.timestamps
    end
  end
end

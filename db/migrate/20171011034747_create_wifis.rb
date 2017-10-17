class CreateWifis < ActiveRecord::Migration[5.1]
  def change
    create_table :wifis do |t|
      t.string :name
      t.string :prefecture
      t.string :address
      t.float :longitude
      t.float :latitude
      t.float :distance
      t.timestamps
    end
  end
end

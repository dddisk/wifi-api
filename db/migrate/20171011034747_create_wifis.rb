class CreateWifis < ActiveRecord::Migration[5.1]
  def change
    create_table :wifis do |t|

      t.timestamps
    end
  end
end

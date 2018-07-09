class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :thumbnail
      t.text :description
      t.integer :destination_id

      t.timestamps
    end
  end
end

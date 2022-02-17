class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.string :name
      t.references :garden, null: false, foreign_key: true
      t.string :img_url

      t.timestamps
    end
  end
end

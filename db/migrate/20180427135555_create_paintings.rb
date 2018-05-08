class CreatePaintings < ActiveRecord::Migration[5.1]
  def change
    create_table :paintings do |t|
      t.string :title
      t.string :image
      t.text :description
      t.boolean :is_sold, default: false

      t.timestamps
    end
  end
end

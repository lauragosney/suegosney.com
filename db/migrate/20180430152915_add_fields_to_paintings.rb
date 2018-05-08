class AddFieldsToPaintings < ActiveRecord::Migration[5.1]
  def change
    add_column :paintings, :size, :string
    add_column :paintings, :price, :string
    add_column :paintings, :gallery, :string
  end
end

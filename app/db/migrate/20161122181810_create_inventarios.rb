class CreateInventarios < ActiveRecord::Migration[5.0]
  def change
    create_table :inventarios do |t|
      t.integer :quantidade, null: false
      t.references :item_de_inventario, foreign_key: true, null: false


      t.timestamps
    end
  end
end

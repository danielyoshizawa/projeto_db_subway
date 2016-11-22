class CreateItemDeInventarios < ActiveRecord::Migration[5.0]
  def change
    create_table :item_de_inventarios do |t|
      t.string :nome, null: false

      t.timestamps
    end
  end
end

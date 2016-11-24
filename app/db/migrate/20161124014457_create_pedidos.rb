class CreatePedidos < ActiveRecord::Migration[5.0]
  def change
    create_table :pedidos do |t|
      t.integer :numero_nota_fiscal
      t.datetime :data
      t.decimal :total

      t.timestamps
    end
  end
end

class CreateEstoqueLojas < ActiveRecord::Migration[5.0]
  def change
    create_table :estoque_lojas do |t|
      t.references :alimento, foreign_key: true, null: false
      t.integer :quantidade, null: false

      t.timestamps
    end
  end
end

class CreateCidades < ActiveRecord::Migration[5.0]
  def change
    create_table :cidades do |t|
      t.string :nome, null: false
      t.references :estado, foreign_key: true, null: false

      t.timestamps
    end
  end
end

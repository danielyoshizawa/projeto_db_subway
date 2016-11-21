class CreateEstados < ActiveRecord::Migration[5.0]
  def change
    create_table :estados do |t|
      t.string :nome, null: false
      t.string :sigla, null: false
      t.references :pais, foreign_key: true, null: false

      t.timestamps
    end
  end
end

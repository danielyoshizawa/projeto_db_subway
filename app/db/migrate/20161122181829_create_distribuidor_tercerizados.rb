class CreateDistribuidorTercerizados < ActiveRecord::Migration[5.0]
  def change
    create_table :distribuidor_tercerizados do |t|
      t.string :nome, null: false
      t.string :contato, null: false

      t.timestamps
    end
  end
end

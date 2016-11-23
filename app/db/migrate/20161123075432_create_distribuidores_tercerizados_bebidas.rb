class CreateDistribuidoresTercerizadosBebidas < ActiveRecord::Migration[5.0]
  def change
    create_table :distribuidores_tercerizados_bebidas do |t|
      t.belongs_to :distribuidor_tercerizado, index: false
      t.belongs_to :alimento, index: false

      t.timestamps
    end
  end
end

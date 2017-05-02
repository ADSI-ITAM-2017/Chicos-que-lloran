class CreatePropiedads < ActiveRecord::Migration[5.1]
  def change
    create_table :propiedads do |t|
      t.string :arrendador
      t.string :direccion
      t.float :precio
      t.text :descripcion

      t.timestamps
    end
  end
end

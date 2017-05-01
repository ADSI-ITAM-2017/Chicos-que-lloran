class CreateUsuarios < ActiveRecord::Migration[5.1]
  def change
    create_table :usuarios do |t|
      t.string :Nombre
      t.string :Email
      t.string :Contraseña

      t.timestamps
    end
  end
end

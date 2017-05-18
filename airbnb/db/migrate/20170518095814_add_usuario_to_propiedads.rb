class AddUsuarioToPropiedads < ActiveRecord::Migration[5.1]
  def change
    add_reference :propiedads, :usuario, foreign_key: true
  end
end

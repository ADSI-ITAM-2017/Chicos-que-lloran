class AddImagenToPropiedads < ActiveRecord::Migration[5.1]
  def change
    add_column :propiedads, :imagen, :string
  end
end

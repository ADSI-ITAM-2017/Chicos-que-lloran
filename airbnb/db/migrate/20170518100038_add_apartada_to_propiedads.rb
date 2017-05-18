class AddApartadaToPropiedads < ActiveRecord::Migration[5.1]
  def change
    add_column :propiedads, :apartada, :boolean
  end
end

class AddPropiedadToPComments < ActiveRecord::Migration[5.1]
  def change
    add_reference :p_comments, :propiedad, foreign_key: true
  end
end

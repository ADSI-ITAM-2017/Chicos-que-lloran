class AddCalificacionToPComments < ActiveRecord::Migration[5.1]
  def change
    add_column :p_comments, :califiacion, :int
  end
end

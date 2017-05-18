class RemoveMessage < ActiveRecord::Migration[5.1]
  def change
  	remove_column :messages, :usuario_id
  end
end

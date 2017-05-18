class AddUsuariosToMessages < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :usuario1_id, :integer
    add_column :messages, :usuario2_id, :integer
  end
end

class Message < ActiveRecord::Base
  belongs_to :usuario1, :class_name => "Usuario", :foreign_key => 'usuario1_id'
  belongs_to :usuario2, :class_name => "Usuario", :foreign_key => 'usuario2_id'
end

class Usuario < ActiveRecord::Base
  has_many :messages
end
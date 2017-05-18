class Propiedad < ApplicationRecord
	def self.search(search)
  			where("arrendador LIKE ? OR direccion LIKE ? OR descripcion LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
	end
end

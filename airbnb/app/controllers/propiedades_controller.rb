class PropiedadesController < ApplicationController
  def index
  	@propiedades = Propiedad.all
  end

  def add
  end

  def show
  	@propiedad = Propiedad.find(params[:id])
  end

  private
  def allowed_params
  	params.require(:propiedad).permit(:arrendador, :direccion, :precio, :descripcion)
  end

end

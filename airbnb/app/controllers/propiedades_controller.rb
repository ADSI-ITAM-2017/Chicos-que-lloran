class PropiedadesController < ApplicationController
  def index
  	@propiedades = Propiedad.all
    if params[:search]
      @propiedades = Propiedad.search(params[:search]).order("created_at DESC")
    else
      @propiedades = Propiedad.all.order("created_at DESC")
    end
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

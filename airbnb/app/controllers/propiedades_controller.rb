class PropiedadesController < ApplicationController
  def index
    @p_comments = PComment.all
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
    @p_comments = PComment.where("propiedad_id="+params[:id])
  	@propiedad = Propiedad.find_by_id(params[:id])
  end

  private
  def allowed_params
  	params.require(:propiedad).permit(:arrendador, :direccion, :precio, :descripcion)
  end

end

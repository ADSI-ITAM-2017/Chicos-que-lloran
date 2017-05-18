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

  def new
    @propiedad = Propiedad.new
  end

  def create
    @propiedad = Propiedad.new(allowed_params)
    if @propiedad.save
        redirect_to root_url, notice: 'Se ha añadido la propiedad con éxito'
    else
        render :new
    end
  end

  def show
    @p_comments = PComment.where("propiedad_id="+params[:id])
  	@propiedad = Propiedad.find_by_id(params[:id])
  end

  private
  def allowed_params
  	params.require(:propiedad).permit(:direccion, :precio, :descripcion, :usuario_id, :imagen)
  end

end

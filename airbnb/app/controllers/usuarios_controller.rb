class UsuariosController < ApplicationController
	def new
    	@usuario = Usuario.new
  	end

  def create
    @usuario = Usuario.new(allowed_params)
    if @usuario.save
    	session[:usuario_id] = @usuario.id
      	redirect_to root_url, notice: 'Gracias por registrarte, '+@usuario.email
    else
      	render :new
    end
  end

  private

  def allowed_params
    params.require(:usuario).permit(:nombre,:email,:password,:password_confirmation)
  end
end

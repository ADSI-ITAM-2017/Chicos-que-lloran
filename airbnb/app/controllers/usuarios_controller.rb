class UsuariosController < ApplicationController
	def new
    @usuario = Usuario.new
  end

  def create
    @usuario = Usuario.new(allowed_params)
    if @usuario.save
      redirect_to root_url, notice: 'Gracias por registrarte!'
    else
      render :new
    end
  end

  private

  def allowed_params
    params.require(:usuario).permit(:email, :password_digest)
  end
end

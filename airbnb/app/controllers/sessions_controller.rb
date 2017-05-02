class SessionsController < ApplicationController
  def new
  end
  def create
	  usuario = Usuario.find_by(email: params[:email])
	  if usuario && usuario.authenticate(params[:password])
	    session[:usuario_id] = usuario.id
	    redirect_to root_url, notice: 'Bienvenido '+params[:email]
	  else
	    flash.now.alert = 'Email y/o contraseña invalidos'
	    render :new
	  end
  end
end

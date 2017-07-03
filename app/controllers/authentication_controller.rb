class AuthenticationController < ApplicationController
 skip_before_action :authenticate_request

 def authenticate
   command = AuthenticateUsuario.call(params[:email], params[:password])

   if command.success?
    #  render json: { auth_token: command.result}
    render json: command.result
   else
     render json: { error: command.errors }, status: :unauthorized
   end
 end
end

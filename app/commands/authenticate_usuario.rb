class AuthenticateUsuario
  prepend SimpleCommand
  def initialize(email, password)
     @email = email
     @password = password
  end

  def call
    JsonWebToken.encode(usuario_id: usuario.id) if usuario
  end

  private

  attr_accessor :email, :password

  def usuario
    usuario = Usuario.find_by_email(email)
    return usuario if usuario && usuario.authenticate(password)
    errors.add :usuario_authentication, 'invalid credentials'
    nil
  end
end

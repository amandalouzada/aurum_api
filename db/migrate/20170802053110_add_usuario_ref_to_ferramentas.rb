class AddUsuarioRefToFerramentas < ActiveRecord::Migration[5.1]
  def change
    add_reference :ferramentas, :usuario, foreign_key: true
  end
end

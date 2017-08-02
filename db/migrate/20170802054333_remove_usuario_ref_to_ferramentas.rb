class RemoveUsuarioRefToFerramentas < ActiveRecord::Migration[5.1]
  def change
    remove_reference :ferramentas, :usuario, foreign_key: true
  end
end

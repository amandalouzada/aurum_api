class AddUsuarioRefToQuimicaPerformances < ActiveRecord::Migration[5.1]
  def change
    add_reference :quimica_performances, :usuario, foreign_key: true
  end
end

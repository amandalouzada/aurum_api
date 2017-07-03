class AddUsuarioRefToCoachees < ActiveRecord::Migration[5.1]
  def change
    add_reference :coachees, :usuario, foreign_key: true
  end
end

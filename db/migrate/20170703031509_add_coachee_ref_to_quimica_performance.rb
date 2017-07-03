class AddCoacheeRefToQuimicaPerformance < ActiveRecord::Migration[5.1]
  def change
    add_reference :quimica_performances, :coachee, foreign_key: true
  end
end

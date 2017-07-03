class AddQuimicaPerformanceRefToAtividade < ActiveRecord::Migration[5.1]
  def change
    add_reference :atividades, :quimica_performance, foreign_key: true
  end
end

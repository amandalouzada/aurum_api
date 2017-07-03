class AddFerramentaRefToQuimicaPerformance < ActiveRecord::Migration[5.1]
  def change
    add_reference :quimica_performances, :ferramenta, foreign_key: true
  end
end

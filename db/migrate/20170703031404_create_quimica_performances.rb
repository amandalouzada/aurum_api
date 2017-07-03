class CreateQuimicaPerformances < ActiveRecord::Migration[5.1]
  def change
    create_table :quimica_performances do |t|
      t.string :nome

      t.timestamps
    end
  end
end

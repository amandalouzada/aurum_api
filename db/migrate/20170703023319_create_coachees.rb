class CreateCoachees < ActiveRecord::Migration[5.1]
  def change
    create_table :coachees do |t|
      t.string :nome
      t.string :telefone
      t.string :idade
      t.string :sexo
      t.string :objetivo

      t.timestamps
    end
  end
end

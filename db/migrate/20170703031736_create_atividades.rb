class CreateAtividades < ActiveRecord::Migration[5.1]
  def change
    create_table :atividades do |t|
      t.integer :impacto
      t.string :quando
      t.string :quem
      t.string :evidencia
      t.integer :sequencia

      t.timestamps
    end
  end
end

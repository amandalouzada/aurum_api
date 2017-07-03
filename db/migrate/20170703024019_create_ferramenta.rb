class CreateFerramenta < ActiveRecord::Migration[5.1]
  def change
    create_table :ferramenta do |t|
      t.string :tipo

      t.timestamps
    end
  end
end

class CreateUsuarios < ActiveRecord::Migration[5.1]
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :senha
      t.string :email
      t.string :celular

      t.timestamps
    end
  end
end

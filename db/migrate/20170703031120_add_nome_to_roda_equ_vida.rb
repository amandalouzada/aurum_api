class AddNomeToRodaEquVida < ActiveRecord::Migration[5.1]
  def change
    add_column :roda_equ_vidas, :nome, :string
  end
end

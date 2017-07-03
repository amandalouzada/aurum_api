class AddFerramentaRefToRodaEquVida < ActiveRecord::Migration[5.1]
  def change
    add_reference :roda_equ_vidas, :ferramenta, foreign_key: true
  end
end

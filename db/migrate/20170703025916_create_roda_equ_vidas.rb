class CreateRodaEquVidas < ActiveRecord::Migration[5.1]
  def change
    create_table :roda_equ_vidas do |t|
      t.integer :saude
      t.integer :deseIntelectual
      t.integer :equiEmocional
      t.integer :realizacaoProposito
      t.integer :recursosFinanceiros
      t.integer :contribuicaoSocial
      t.integer :familia
      t.integer :deseAmoroso
      t.integer :vidaSocial
      t.integer :hobbiesDiversoes
      t.integer :plenitudeFelicidade
      t.integer :espiritualidade

      t.timestamps
    end
  end
end

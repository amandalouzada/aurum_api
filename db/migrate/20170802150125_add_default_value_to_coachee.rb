class AddDefaultValueToCoachee < ActiveRecord::Migration[5.1]
  def change
    add_column :coachees, :arquivado, :boolean, default: false
  end
end

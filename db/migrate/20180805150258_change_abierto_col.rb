class ChangeAbiertoCol < ActiveRecord::Migration[5.2]
  def change
    rename_column :mesas, :abierto, :available
  end
end

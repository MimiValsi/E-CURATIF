class AddStatusToInfos < ActiveRecord::Migration[7.0]
  def change
    add_column :infos, :status, :string
  end
end

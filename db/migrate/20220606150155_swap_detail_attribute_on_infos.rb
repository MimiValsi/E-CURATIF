class SwapDetailAttributeOnInfos < ActiveRecord::Migration[7.0]
  def change
    change_column :infos, :detail, :text, :limit => nil
  end
end

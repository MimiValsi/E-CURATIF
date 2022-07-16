class CreateInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :infos do |t|
      t.string :agent
      t.string :event
      t.string :ouvrage
      t.integer :priority
      t.date :target
      t.string :rte
      t.string :detail
      t.string :devis
      t.string :brips
      t.string :oups
      t.string :ameps
      t.string :ais
      t.references :source, null: false, foreign_key: true

      t.timestamps
    end
  end
end

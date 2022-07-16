class CreateArchiveds < ActiveRecord::Migration[7.0]
  def change
    create_table :archiveds do |t|
      t.string :agent
      t.string :event
      t.string :ouvrage
      t.integer :priority
      t.date :target
      t.string :rte
      t.text :detail
      t.string :devis
      t.string :brips
      t.string :oups
      t.string :ameps
      t.string :ais
      t.references :source, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end

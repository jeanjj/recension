class CreateOeuvres < ActiveRecord::Migration
  def change
    create_table :oeuvres do |t|
      t.string :auteur
      t.string :titre
      t.string :forme
      t.string :date
      t.string :localisation
      t.text :descritpion
      t.text :critiques
      t.string :connexes

      t.timestamps null: false
    end
  end
end

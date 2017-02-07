class ChangeNameOfTableSpecies < ActiveRecord::Migration[5.0]
  def change
    rename_table :species, :animals
  end
end

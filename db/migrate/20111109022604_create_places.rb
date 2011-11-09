class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :url
      t.references :tour

      t.timestamps
    end
  end
end

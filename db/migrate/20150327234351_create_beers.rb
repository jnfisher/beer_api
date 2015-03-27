class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.float :abv
      t.float :ibu
      t.integer :rating

      t.timestamps
    end
  end
end

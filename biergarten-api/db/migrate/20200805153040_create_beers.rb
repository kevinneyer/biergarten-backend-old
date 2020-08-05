class CreateBeers < ActiveRecord::Migration[6.0]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :brewery 
      t.string :img_url
      t.string :style
      t.float :abv 
      t.string :description
      t.string :tasting_notes
      t.integer :likes 
      t.string :recommended_drinking

      t.timestamps
    end
  end
end

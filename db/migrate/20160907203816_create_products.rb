class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :price
        #is string accurate attribute for radio button?

      t.timestamps
    end
  end
end

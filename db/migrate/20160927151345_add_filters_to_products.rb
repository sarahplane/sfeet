class AddFiltersToProducts < ActiveRecord::Migration
  def change
    add_column :products, :filters, :string
  end
end

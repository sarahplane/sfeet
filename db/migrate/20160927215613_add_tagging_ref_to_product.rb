class AddTaggingRefToProduct < ActiveRecord::Migration
  def change
    add_reference :taggings, :product, index: true
  end
end

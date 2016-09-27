class RemoveTaggingRefToArticle < ActiveRecord::Migration
  def change
    remove_reference :taggings, :article
  end
end

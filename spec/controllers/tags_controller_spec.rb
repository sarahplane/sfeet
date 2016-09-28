require "rails_helper"

RSpec.describe ProductsController, :type => :controller do

  before(:each) do
    @product = Product.create(name: "Some Product", price: "3")
    @tags = Tag.create{['yummy item', 'really yummy item', 'healthy item']}
    @tag = Tag.create(name: "Snackaroo")
  end

  describe "DELETE #destroy" do
    it "successfully deletes a tag" do
      put :destroy, :id => @tag.id, method: :delete

      expect(Tag.count).to eq 2
    end
  end
end

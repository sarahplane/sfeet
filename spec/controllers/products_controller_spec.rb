require "rails_helper"

RSpec.describe ProductsController, :type => :controller do

  describe "GET #index" do
    it "succeeds" do
      get :index
      expect(response).to be_successful
    end
  end

  describe "GET #new" do
    it "assigns a blank product form to the view" do
      get :new
      expect(assigns(:product)).to be_a_new(Product)
    end
  end

  describe "POST #create" do
    it "successfully creates a product" do
      post :create, product: {name: 'Test 123', description: 'This is a test.'}
      expect @products == 1
    end
  end



end

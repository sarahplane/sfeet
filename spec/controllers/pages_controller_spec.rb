require "rails_helper"

RSpec.describe PagesController, :type => :controller do
  describe "GET #home" do
    it "responds successfully with an HTTP 200 status code" do
      get :home
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the index template" do
      get :home
      expect(response).to render_template("home")
    end
  end
end

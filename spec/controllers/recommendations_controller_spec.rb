require "rails_helper"

RSpec.describe RecommendationsController, :type => :controller do
  describe "GET #index" do

    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "loads all of the recs into @recommendations" do
      rec1, rec2 = Recommendation.create!(title: "rec1", summary: "stuff"), Recommendation.create!(title: "rec2", summary: "things")
      get :index

      expect(assigns(:recommendations)).to match_array([rec1, rec2])
    end

  end
end

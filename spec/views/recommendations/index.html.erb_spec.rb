require 'rails_helper'

RSpec.describe "recommendations/index", type: :view do
  before(:each) do
    assign(:recommendations, [
      Recommendation.create!(
        :title => "Title",
        :summary => "MyText",
        :author => "Author",
        :genre => "Genre",
        :length => "Length",
        :rating => "Rating",
        :string => "String",
        :complete => false,
        :recommended_by => "Recommended By",
        :recommender_review => "MyText"
      ),
      Recommendation.create!(
        :title => "Title",
        :summary => "MyText",
        :author => "Author",
        :genre => "Genre",
        :length => "Length",
        :rating => "Rating",
        :string => "String",
        :complete => false,
        :recommended_by => "Recommended By",
        :recommender_review => "MyText"
      )
    ])
  end

  it "renders a list of recommendations" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "Genre".to_s, :count => 2
    assert_select "tr>td", :text => "Length".to_s, :count => 2
    assert_select "tr>td", :text => "Rating".to_s, :count => 2
    assert_select "tr>td", :text => "String".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Recommended By".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

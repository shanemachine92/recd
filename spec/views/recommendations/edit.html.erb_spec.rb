require 'rails_helper'

RSpec.describe "recommendations/edit", type: :view do
  before(:each) do
    @recommendation = assign(:recommendation, Recommendation.create!(
      :title => "MyString",
      :summary => "MyText",
      :author => "MyString",
      :genre => "MyString",
      :length => "MyString",
      :rating => "MyString",
      :string => "MyString",
      :complete => false,
      :recommended_by => "MyString",
      :recommender_review => "MyText"
    ))
  end

  it "renders the edit recommendation form" do
    render

    assert_select "form[action=?][method=?]", recommendation_path(@recommendation), "post" do

      assert_select "input[name=?]", "recommendation[title]"

      assert_select "textarea[name=?]", "recommendation[summary]"

      assert_select "input[name=?]", "recommendation[author]"

      assert_select "input[name=?]", "recommendation[genre]"

      assert_select "input[name=?]", "recommendation[length]"

      assert_select "input[name=?]", "recommendation[rating]"

      assert_select "input[name=?]", "recommendation[string]"

      assert_select "input[name=?]", "recommendation[complete]"

      assert_select "input[name=?]", "recommendation[recommended_by]"

      assert_select "textarea[name=?]", "recommendation[recommender_review]"
    end
  end
end

require 'rails_helper'

RSpec.describe "recommendations/new", type: :view do
  before(:each) do
    assign(:recommendation, Recommendation.new(
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

  it "renders new recommendation form" do
    render

    assert_select "form[action=?][method=?]", recommendations_path, "post" do

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

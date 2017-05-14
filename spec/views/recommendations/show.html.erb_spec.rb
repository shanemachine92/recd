require 'rails_helper'

RSpec.describe "recommendations/show", type: :view do
  before(:each) do
    @recommendation = assign(:recommendation, Recommendation.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/Genre/)
    expect(rendered).to match(/Length/)
    expect(rendered).to match(/Rating/)
    expect(rendered).to match(/String/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Recommended By/)
    expect(rendered).to match(/MyText/)
  end
end

require "rails_helper"

RSpec.describe User, :type => :model do
  it "confirms user roles" do
    shane = User.create!(name: "Shane Zackery", roles: "site_admin", email: "shane@recd.com", password: "password")
    johnny = User.create!(name: "Johnny Appleseed", roles: "user", email: "jappleseed@recd.com", password: "password")

    expect(User.first.roles).to eq([:site_admin, :user] )
  end
end

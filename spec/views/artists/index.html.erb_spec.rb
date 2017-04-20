require 'rails_helper'

RSpec.describe "artists/index", type: :view do
  before(:each) do
    assign(:artists, [
      Artist.create!(
        :user => nil,
        :name => "Name",
        :avatar => "Avatar",
        :earning_to_date => "9.99"
      ),
      Artist.create!(
        :user => nil,
        :name => "Name",
        :avatar => "Avatar",
        :earning_to_date => "9.99"
      )
    ])
  end

  it "renders a list of artists" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Avatar".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end

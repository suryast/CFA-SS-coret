require 'rails_helper'

RSpec.describe "creations/index", type: :view do
  before(:each) do
    assign(:creations, [
      Creation.create!(
        :artist => nil,
        :artwork_image => "Artwork Image",
        :name => "Name",
        :description => "MyText",
        :type => "Type"
      ),
      Creation.create!(
        :artist => nil,
        :artwork_image => "Artwork Image",
        :name => "Name",
        :description => "MyText",
        :type => "Type"
      )
    ])
  end

  it "renders a list of creations" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Artwork Image".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end

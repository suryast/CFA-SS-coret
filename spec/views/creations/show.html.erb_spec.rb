require 'rails_helper'

RSpec.describe "creations/show", type: :view do
  before(:each) do
    @creation = assign(:creation, Creation.create!(
      :artist => nil,
      :artwork_image => "Artwork Image",
      :name => "Name",
      :description => "MyText",
      :type => "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Artwork Image/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Type/)
  end
end

require 'rails_helper'

RSpec.describe "artists/show", type: :view do
  before(:each) do
    @artist = assign(:artist, Artist.create!(
      :user => nil,
      :name => "Name",
      :avatar => "Avatar",
      :earning_to_date => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Avatar/)
    expect(rendered).to match(/9.99/)
  end
end

require 'rails_helper'

RSpec.describe "creations/edit", type: :view do
  before(:each) do
    @creation = assign(:creation, Creation.create!(
      :artist => nil,
      :artwork_image => "MyString",
      :name => "MyString",
      :description => "MyText",
      :type => ""
    ))
  end

  it "renders the edit creation form" do
    render

    assert_select "form[action=?][method=?]", creation_path(@creation), "post" do

      assert_select "input#creation_artist_id[name=?]", "creation[artist_id]"

      assert_select "input#creation_artwork_image[name=?]", "creation[artwork_image]"

      assert_select "input#creation_name[name=?]", "creation[name]"

      assert_select "textarea#creation_description[name=?]", "creation[description]"

      assert_select "input#creation_type[name=?]", "creation[type]"
    end
  end
end

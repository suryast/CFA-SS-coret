require 'rails_helper'

RSpec.describe "creations/new", type: :view do
  before(:each) do
    assign(:creation, Creation.new(
      :artist => nil,
      :artwork_image => "MyString",
      :name => "MyString",
      :description => "MyText",
      :type => ""
    ))
  end

  it "renders new creation form" do
    render

    assert_select "form[action=?][method=?]", creations_path, "post" do

      assert_select "input#creation_artist_id[name=?]", "creation[artist_id]"

      assert_select "input#creation_artwork_image[name=?]", "creation[artwork_image]"

      assert_select "input#creation_name[name=?]", "creation[name]"

      assert_select "textarea#creation_description[name=?]", "creation[description]"

      assert_select "input#creation_type[name=?]", "creation[type]"
    end
  end
end

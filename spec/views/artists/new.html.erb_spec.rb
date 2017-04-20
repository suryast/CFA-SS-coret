require 'rails_helper'

RSpec.describe "artists/new", type: :view do
  before(:each) do
    assign(:artist, Artist.new(
      :user => nil,
      :name => "MyString",
      :avatar => "MyString",
      :earning_to_date => "9.99"
    ))
  end

  it "renders new artist form" do
    render

    assert_select "form[action=?][method=?]", artists_path, "post" do

      assert_select "input#artist_user_id[name=?]", "artist[user_id]"

      assert_select "input#artist_name[name=?]", "artist[name]"

      assert_select "input#artist_avatar[name=?]", "artist[avatar]"

      assert_select "input#artist_earning_to_date[name=?]", "artist[earning_to_date]"
    end
  end
end

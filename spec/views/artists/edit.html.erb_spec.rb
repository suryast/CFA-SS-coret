require 'rails_helper'

RSpec.describe "artists/edit", type: :view do
  before(:each) do
    @artist = assign(:artist, Artist.create!(
      :user => nil,
      :name => "MyString",
      :avatar => "MyString",
      :earning_to_date => "9.99"
    ))
  end

  it "renders the edit artist form" do
    render

    assert_select "form[action=?][method=?]", artist_path(@artist), "post" do

      assert_select "input#artist_user_id[name=?]", "artist[user_id]"

      assert_select "input#artist_name[name=?]", "artist[name]"

      assert_select "input#artist_avatar[name=?]", "artist[avatar]"

      assert_select "input#artist_earning_to_date[name=?]", "artist[earning_to_date]"
    end
  end
end

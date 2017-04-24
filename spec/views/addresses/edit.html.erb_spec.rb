require 'rails_helper'

RSpec.describe "addresses/edit", type: :view do
  before(:each) do
    @address = assign(:address, Address.create!(
      :street_name => "MyString",
      :suburb => "MyString",
      :state => "MyString",
      :postcode => "MyString",
      :country => "MyString",
      :user => nil
    ))
  end

  it "renders the edit address form" do
    render

    assert_select "form[action=?][method=?]", address_path(@address), "post" do

      assert_select "input#address_street_name[name=?]", "address[street_name]"

      assert_select "input#address_suburb[name=?]", "address[suburb]"

      assert_select "input#address_state[name=?]", "address[state]"

      assert_select "input#address_postcode[name=?]", "address[postcode]"

      assert_select "input#address_country[name=?]", "address[country]"

      assert_select "input#address_user_id[name=?]", "address[user_id]"
    end
  end
end

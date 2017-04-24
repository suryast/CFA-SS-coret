require 'rails_helper'

RSpec.describe "addresses/new", type: :view do
  before(:each) do
    assign(:address, Address.new(
      :street_name => "MyString",
      :suburb => "MyString",
      :state => "MyString",
      :postcode => "MyString",
      :country => "MyString",
      :user => nil
    ))
  end

  it "renders new address form" do
    render

    assert_select "form[action=?][method=?]", addresses_path, "post" do

      assert_select "input#address_street_name[name=?]", "address[street_name]"

      assert_select "input#address_suburb[name=?]", "address[suburb]"

      assert_select "input#address_state[name=?]", "address[state]"

      assert_select "input#address_postcode[name=?]", "address[postcode]"

      assert_select "input#address_country[name=?]", "address[country]"

      assert_select "input#address_user_id[name=?]", "address[user_id]"
    end
  end
end

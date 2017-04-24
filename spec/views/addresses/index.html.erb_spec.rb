require 'rails_helper'

RSpec.describe "addresses/index", type: :view do
  before(:each) do
    assign(:addresses, [
      Address.create!(
        :street_name => "Street Name",
        :suburb => "Suburb",
        :state => "State",
        :postcode => "Postcode",
        :country => "Country",
        :user => nil
      ),
      Address.create!(
        :street_name => "Street Name",
        :suburb => "Suburb",
        :state => "State",
        :postcode => "Postcode",
        :country => "Country",
        :user => nil
      )
    ])
  end

  it "renders a list of addresses" do
    render
    assert_select "tr>td", :text => "Street Name".to_s, :count => 2
    assert_select "tr>td", :text => "Suburb".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Postcode".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end

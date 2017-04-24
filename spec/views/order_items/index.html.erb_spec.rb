require 'rails_helper'

RSpec.describe "order_items/index", type: :view do
  before(:each) do
    assign(:order_items, [
      OrderItem.create!(
        :product => nil,
        :order => nil,
        :unit_price => "9.99",
        :quantity => 2,
        :total_price => "9.99"
      ),
      OrderItem.create!(
        :product => nil,
        :order => nil,
        :unit_price => "9.99",
        :quantity => 2,
        :total_price => "9.99"
      )
    ])
  end

  it "renders a list of order_items" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end

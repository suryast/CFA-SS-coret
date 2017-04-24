require 'rails_helper'

RSpec.describe "shopping_carts/index", type: :view do
  before(:each) do
    assign(:shopping_carts, [
      ShoppingCart.create!(
        :subtotal => "9.99",
        :tax => "9.99",
        :shipping => "9.99",
        :total => "9.99",
        :order_status => nil
      ),
      ShoppingCart.create!(
        :subtotal => "9.99",
        :tax => "9.99",
        :shipping => "9.99",
        :total => "9.99",
        :order_status => nil
      )
    ])
  end

  it "renders a list of shopping_carts" do
    render
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end

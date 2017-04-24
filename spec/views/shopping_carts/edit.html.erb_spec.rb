require 'rails_helper'

RSpec.describe "shopping_carts/edit", type: :view do
  before(:each) do
    @shopping_cart = assign(:shopping_cart, ShoppingCart.create!(
      :subtotal => "9.99",
      :tax => "9.99",
      :shipping => "9.99",
      :total => "9.99",
      :order_status => nil
    ))
  end

  it "renders the edit shopping_cart form" do
    render

    assert_select "form[action=?][method=?]", shopping_cart_path(@shopping_cart), "post" do

      assert_select "input#shopping_cart_subtotal[name=?]", "shopping_cart[subtotal]"

      assert_select "input#shopping_cart_tax[name=?]", "shopping_cart[tax]"

      assert_select "input#shopping_cart_shipping[name=?]", "shopping_cart[shipping]"

      assert_select "input#shopping_cart_total[name=?]", "shopping_cart[total]"

      assert_select "input#shopping_cart_order_status_id[name=?]", "shopping_cart[order_status_id]"
    end
  end
end

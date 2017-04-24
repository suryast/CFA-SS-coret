require 'rails_helper'

RSpec.describe "orders/new", type: :view do
  before(:each) do
    assign(:order, Order.new(
      :subtotal => "9.99",
      :tax => "9.99",
      :shipping => "9.99",
      :total => "9.99",
      :order_status => nil
    ))
  end

  it "renders new order form" do
    render

    assert_select "form[action=?][method=?]", orders_path, "post" do

      assert_select "input#order_subtotal[name=?]", "order[subtotal]"

      assert_select "input#order_tax[name=?]", "order[tax]"

      assert_select "input#order_shipping[name=?]", "order[shipping]"

      assert_select "input#order_total[name=?]", "order[total]"

      assert_select "input#order_order_status_id[name=?]", "order[order_status_id]"
    end
  end
end

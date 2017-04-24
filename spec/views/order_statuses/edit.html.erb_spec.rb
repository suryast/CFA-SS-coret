require 'rails_helper'

RSpec.describe "order_statuses/edit", type: :view do
  before(:each) do
    @order_status = assign(:order_status, OrderStatus.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit order_status form" do
    render

    assert_select "form[action=?][method=?]", order_status_path(@order_status), "post" do

      assert_select "input#order_status_name[name=?]", "order_status[name]"
    end
  end
end

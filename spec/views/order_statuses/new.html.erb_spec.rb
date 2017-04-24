require 'rails_helper'

RSpec.describe "order_statuses/new", type: :view do
  before(:each) do
    assign(:order_status, OrderStatus.new(
      :name => "MyString"
    ))
  end

  it "renders new order_status form" do
    render

    assert_select "form[action=?][method=?]", order_statuses_path, "post" do

      assert_select "input#order_status_name[name=?]", "order_status[name]"
    end
  end
end

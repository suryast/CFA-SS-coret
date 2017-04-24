require 'rails_helper'

RSpec.describe "order_statuses/index", type: :view do
  before(:each) do
    assign(:order_statuses, [
      OrderStatus.create!(
        :name => "Name"
      ),
      OrderStatus.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of order_statuses" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end

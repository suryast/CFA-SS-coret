require 'rails_helper'

RSpec.describe "order_statuses/show", type: :view do
  before(:each) do
    @order_status = assign(:order_status, OrderStatus.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end

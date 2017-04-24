require 'rails_helper'

RSpec.describe "shopping_carts/show", type: :view do
  before(:each) do
    @shopping_cart = assign(:shopping_cart, ShoppingCart.create!(
      :subtotal => "9.99",
      :tax => "9.99",
      :shipping => "9.99",
      :total => "9.99",
      :order_status => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
  end
end

require 'rails_helper'

RSpec.describe "product_types/show", type: :view do
  before(:each) do
    @product_type = assign(:product_type, ProductType.create!(
      :type_name => "Type Name",
      :price => "9.99",
      :in_stock => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Type Name/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
  end
end

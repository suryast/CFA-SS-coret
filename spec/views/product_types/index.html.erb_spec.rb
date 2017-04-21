require 'rails_helper'

RSpec.describe "product_types/index", type: :view do
  before(:each) do
    assign(:product_types, [
      ProductType.create!(
        :type_name => "Type Name",
        :price => "9.99",
        :in_stock => false
      ),
      ProductType.create!(
        :type_name => "Type Name",
        :price => "9.99",
        :in_stock => false
      )
    ])
  end

  it "renders a list of product_types" do
    render
    assert_select "tr>td", :text => "Type Name".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

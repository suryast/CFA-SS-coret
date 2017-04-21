require 'rails_helper'

RSpec.describe "product_types/new", type: :view do
  before(:each) do
    assign(:product_type, ProductType.new(
      :type_name => "MyString",
      :price => "9.99",
      :in_stock => false
    ))
  end

  it "renders new product_type form" do
    render

    assert_select "form[action=?][method=?]", product_types_path, "post" do

      assert_select "input#product_type_type_name[name=?]", "product_type[type_name]"

      assert_select "input#product_type_price[name=?]", "product_type[price]"

      assert_select "input#product_type_in_stock[name=?]", "product_type[in_stock]"
    end
  end
end

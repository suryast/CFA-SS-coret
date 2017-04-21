require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      :name => "MyString",
      :price => "9.99",
      :description => "MyText",
      :in_stock => false
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input#product_name[name=?]", "product[name]"

      assert_select "input#product_price[name=?]", "product[price]"

      assert_select "textarea#product_description[name=?]", "product[description]"

      assert_select "input#product_in_stock[name=?]", "product[in_stock]"
    end
  end
end

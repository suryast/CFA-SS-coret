require 'rails_helper'

RSpec.describe "product_types/edit", type: :view do
  before(:each) do
    @product_type = assign(:product_type, ProductType.create!(
      :type_name => "MyString",
      :price => "9.99",
      :in_stock => false
    ))
  end

  it "renders the edit product_type form" do
    render

    assert_select "form[action=?][method=?]", product_type_path(@product_type), "post" do

      assert_select "input#product_type_type_name[name=?]", "product_type[type_name]"

      assert_select "input#product_type_price[name=?]", "product_type[price]"

      assert_select "input#product_type_in_stock[name=?]", "product_type[in_stock]"
    end
  end
end

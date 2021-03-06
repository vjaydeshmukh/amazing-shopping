require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :name => "MyString",
      :description => "MyText",
      :style => "MyString",
      :brand => "MyString",
      :url => "MyString",
      :type => 1,
      :shipping_price => "9.99",
      :note => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do

      assert_select "input[name=?]", "product[name]"

      assert_select "textarea[name=?]", "product[description]"

      assert_select "input[name=?]", "product[style]"

      assert_select "input[name=?]", "product[brand]"

      assert_select "input[name=?]", "product[url]"

      assert_select "input[name=?]", "product[type]"

      assert_select "input[name=?]", "product[shipping_price]"

      assert_select "input[name=?]", "product[note]"

      assert_select "input[name=?]", "product[user_id]"
    end
  end
end

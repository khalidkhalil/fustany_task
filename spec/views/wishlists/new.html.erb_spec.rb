require 'rails_helper'

RSpec.describe "wishlists/new", type: :view do
  before(:each) do
    assign(:wishlist, Wishlist.new(
      :product => nil,
      :user => nil
    ))
  end

  it "renders new wishlist form" do
    render

    assert_select "form[action=?][method=?]", wishlists_path, "post" do

      assert_select "input[name=?]", "wishlist[product_id]"

      assert_select "input[name=?]", "wishlist[user_id]"
    end
  end
end

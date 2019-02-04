require 'rails_helper'

RSpec.describe "wishlists/edit", type: :view do
  before(:each) do
    @wishlist = assign(:wishlist, Wishlist.create!(
      :product => nil,
      :user => nil
    ))
  end

  it "renders the edit wishlist form" do
    render

    assert_select "form[action=?][method=?]", wishlist_path(@wishlist), "post" do

      assert_select "input[name=?]", "wishlist[product_id]"

      assert_select "input[name=?]", "wishlist[user_id]"
    end
  end
end

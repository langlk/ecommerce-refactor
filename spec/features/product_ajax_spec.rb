require "rails_helper"

describe "the product path with AJAX", js: true do
  it "uses AJAX to display product details in a modal" do
    product = FactoryBot.create(:product)
    visit products_path
    click_on product.name
    expect(page).to have_content(product.description)
    expect(page).to have_content('CLOSE')
  end

  it "uses AJAX to add an item to a user's cart" do
    product = FactoryBot.create(:product)
    visit products_path
    click_on product.name
    click_button "add_to_cart"
    expect(page).to have_content("Cart | Total Items: 1")
  end

  it "uses AJAX to remove an item from a user's cart" do
    product = FactoryBot.create(:product)
    visit product_path(product)
    click_button "add_to_cart"
    click_link "Cart | Total Items: 1"
    click_link "Remove"
    expect(page).to have_content("Cart | Total Items: 0")
    expect(page).to have_no_content(product.name)
  end
end

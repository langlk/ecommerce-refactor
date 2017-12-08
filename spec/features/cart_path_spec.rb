require "rails_helper"

describe "the cart management path" do
  before do
    @user = FactoryBot.create(:user)
    visit '/sign_in'
    fill_in "Email", with: @user.email
    fill_in "Password", with: @user.password
    click_on "sign_in_button"
  end

  it "allows a user to add items to their cart" do
    product = FactoryBot.create(:product)
    visit product_path(product)
    click_button "add_to_cart"
    expect(page).to have_content("Cart | Total Items: 1")
  end

  it "allows a user to remove items from their cart" do
    product = FactoryBot.create(:product)
    visit product_path(product)
    click_button "add_to_cart"
    expect(page).to have_content("Cart | Total Items: 1")
    visit cart_path
    click_on "Remove"
    expect(page).to have_no_content(product.name)
    expect(page).to have_content("Cart | Total Items: 0")
  end

  it "allows a user to finalize their cart order" do
    product = FactoryBot.create(:product)
    visit product_path(product)
    click_button "add_to_cart"
    expect(page).to have_content("Cart | Total Items: 1")
    visit cart_path
    click_on "Finalize Order"
    expect(@user.orders.last.status).to eq(2)
  end

  it "displays a user's order history on their cart page" do
    product = FactoryBot.create(:product)
    visit product_path(product)
    click_button "add_to_cart"
    expect(page).to have_content("Cart | Total Items: 1")
    visit cart_path
    click_on "Finalize Order"
    expect(page).to have_content(product.name)
  end
end

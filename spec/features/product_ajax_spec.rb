require "rails_helper"

describe "the product path with AJAX" do
  it "uses AJAX to display product details in a modal", js: true do
    product = FactoryBot.create(:product)
    visit products_path
    click_on product.name
    expect(page).to have_content(product.description)
    expect(page).to have_content('CLOSE')
  end
end

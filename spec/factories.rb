FactoryBot.define do
  factory(:user) do
    email("test@test.com")
    name("Test User")
    password("Test1234")
    password_confirmation("Test1234")
  end

  factory(:product) do
    name("Test Product")
    description("This is a test product for testing.")
    price(10)
  end

  factory(:order) do
    user
  end

  factory(:order_item) do
    product
    order
    quantity(1)
  end
end

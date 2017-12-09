class Seed

  def self.begin
    seed = Seed.new
    seed.destroy_old_data
    seed.generate_products
  end

  def destroy_old_data
    OrderItem.destroy_all
    Order.destroy_all
    Product.destroy_all
  end

  def generate_products

    20.times do |i|
      Product.create!(
        name: Faker::Lorem.word,
        price: rand(10...100),
        description: Faker::Lorem.sentence(5, false, 0).chop,
        image: File.new("#{Rails.root}/public/images/medium/sample.jpeg")
      )
    end
  end
end

Seed.begin

require "rails_helper"

describe User do
  it { should have_many :orders }

  it { should validate_presence_of :name }
  it { should validate_presence_of :email }
  it { should validate_presence_of :password }
  it { should validate_presence_of :password_confirmation }
  it { should validate_uniqueness_of :name }
  it { should validate_uniqueness_of :email }

  describe '#previous_orders' do
    it "returns all orders assigned to a user with status 2" do
      user = FactoryBot.create(:user, name: "New Test", email: "new@new.com")
      order1 = FactoryBot.create(:order, user: user, status: 2)
      user.orders.push(order1)
      order2 = FactoryBot.create(:order, user: user)
      user.orders.push(order2)
      order3 = FactoryBot.create(:order, user: user, status: 2)
      user.orders.push(order3)
      expect(user.previous_orders).to eq([order1, order3])
    end
  end
end

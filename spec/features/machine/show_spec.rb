require "rails_helper"

RSpec.describe "Machine Show Page" do
  it "should display all snacks" do
    owner = Owner.create!(name: "Ramiro")
    machine_1 = owner.machines.create!(location: "Turing")
    burger = Snack.create!(name: "Burger", price: 3.50)

    visit machine_path(machine_1.id)
    save_and_open_page
    expect(page).to have_content(burger.name)
    expect(page).to have_content(burger.price)

  end
end

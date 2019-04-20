require "rails_helper"

RSpec.describe "Home", type: :system do

  it "should have a h1 title" do
    visit root_path

    expect(page).to have_text("Condomínio App")
  end
end
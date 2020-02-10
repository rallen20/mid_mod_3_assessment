require 'rails_helper'

RSpec.describe "user can search for house members" do
  scenario "user selects house Gryffindor" do
    visit '/'

    page.select 'Gryffindor', from: :house
    click_on 'Search For Members'

    expect(current_path).to eq(search_path)

    expect(page).to have_content("House Gryffindor")
    expect(page).to have_content("Order of the Phoenix Members -- (21 total)")
    expect(page).to have_css('.member', count: 21)

    within(first('.member')) do
      expect(page).to have_css('.name')
      expect(page).to have_css('.role')
      expect(page).to have_css('.house')
      expect(page).to have_css('.patronus')
    end
  end
end

require 'spec_helper'

feature 'filtering by tags' do
  scenario 'User can filter by tags' do
    create_and_tag
    click_button('Filter tags')
    fill_in 'Search tag', :with => 'Social Media'
    click_button('Search tag')
    expect(page).to have_content('Social Media')
  end
end

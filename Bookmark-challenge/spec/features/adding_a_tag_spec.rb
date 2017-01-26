require 'spec_helper'
require './app/models/tags'

feature 'adding tags' do
  scenario 'User can add a tag to their saved website' do
    visit 'links/new'
    fill_in :title, :with => "MySpace"
    fill_in :url, :with => "myspace.com"
    fill_in :tags, :with => "Social Media"
    click_button 'Create Link'

    expect(page).to have_content(:tags)
  end
end

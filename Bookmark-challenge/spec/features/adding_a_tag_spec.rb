require 'spec_helper'

feature 'adding tags' do
  scenario 'User can add a tag to their saved website' do
    create_and_tag
    # within 'ul#links' do
    link = Link.first
    expect(link.tags.map(&:tags)).to include ('Social Media')
  # end
  end
end

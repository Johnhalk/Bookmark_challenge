def create_link
  visit 'links/new'
  fill_in :title, :with => "MySpace"
  fill_in :url, :with => "myspace.com"
  click_button 'Create Link'
end

def create_and_tag
  visit 'links/new'
  fill_in :title, :with => "MySpace"
  fill_in :url, :with => "myspace.com"
  fill_in :tags, :with => "Social Media"
  click_button 'Create Link'
end

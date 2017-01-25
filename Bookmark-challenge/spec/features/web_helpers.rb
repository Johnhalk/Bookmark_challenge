def create_link
  visit 'links/new'
  fill_in :title, :with => "MySpace"
  fill_in :url, :with => "myspace.com"
  click_button 'submit'
end

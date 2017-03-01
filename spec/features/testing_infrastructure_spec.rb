describe "Battle", :type => :feature do
  it 'should tell us infrastructure working' do
    visit '/'
    page.should have_content("Testing infrastructure working!")
  end
end

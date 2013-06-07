require 'spec_helper'

describe "Root Path" do
  it 'should have the new project button' do
    visit '/'
    page.should have_content("New Project")
  end
  
 
  it 'should have the new instructor button' do
    visit '/'
    page.should have_content("New Instructor")
  end
  
  it 'should let the user create a new iustructor' do
    visit '/'
    click_on "New Instructor"
    fill_in "Email", :with => "Bob@example.com"
    fill_in "Password", :with => "password"
    fill_in "Password confirmation", :with => "password"    
    click_on "Sign up"

#    save_and_open_page
#    binding.pry
    page.should have_content "Welcome! You have signed up successfully"
  end
  it 'should have the new student button' do
    visit '/' 
  page.should have_content("New Student")
  end

end
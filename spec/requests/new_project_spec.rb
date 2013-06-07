require 'spec_helper'


describe "New Project" do
  let!(:current_user){
    User.create!(:email => "bob@example.com", :password => "password", :password_confirmation => "password")
  }
  
  let!(:student) {
    User.create!(:email => "heim@example.com", :password => "password", :password_confirmation => "password")
  }
  before(:each) do
    visit new_user_session_path
    fill_in "Email", :with => current_user.email
    fill_in "Password", :with => current_user.password
    click_on "Sign in"
    current_user.add_student(student)
    current_user.save!
  end

  it 'should list the students who are associated with the current user' do
    visit '/projects/new'
    new_project_path.should == '/projects/new'
    save_and_open_page
    page.should have_content("Students")
    page.should have_content(student.email)
  end

end



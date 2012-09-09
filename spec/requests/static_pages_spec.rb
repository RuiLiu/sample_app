require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "Should have the content 'Sample App'" do
      visit root_path
      page.should have_selector('h1', :text=>'Welcome to the Sample App')
    end

    it "should have the right title" do
      visit root_path
      page.should have_selector('title', :text=>"Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe "Help page" do
    it "Should have the content 'help'" do
      visit help_path
      page.should have_selector('h1', :text=> 'Help')
    end

    it "should have the right title" do
      visit help_path
      page.should have_selector('title', :text=>"Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit about_path
      page.should have_selector('h1',text=>'About Us')
    end

    it "should have the title 'About Us'" do
      visit about_path
      page.should have_selector('title',
                                :text => "Ruby on Rails Tutorial Sample App | About Us")
    end
  end

  describe "Contact Page" do
    it "should have the h1 'contact'" do
      visit contact_path
      page.should have_selector('h1',text:'Contact')
    end

    it "should have the title 'contact'" do
      visit contact_path
      page.should have_selector('title', text:"Ruby on Rails Tutorial Sample App | Contact")
    end
  end

end

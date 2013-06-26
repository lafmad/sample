require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
    it "should have the content 'Sample App'" do
    	visit '/static_pages/home'
    	page.should have_content('Sample App')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title',:text => "Sample | Home")
    end
  end

  describe "Help page" do
  	it "should have the content 'Help'" do
  		visit '/static_pages/help'
  		page.should have_content('Help')
  	end
    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title',:text => "Sample | Help")
    end
  end

  describe "About page" do
    it "should have the content 'About me'" do
      visit '/static_pages/about'
      page.should have_content('About me')
    end
    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title',:text => "Sample | About")
    end
  end

  describe "Contact page" do
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      page.should have_content('Contact')
    end
    it "should have the right title" do
      visit '/static_pages/contact'
      page.should have_selector('title',:text => "Sample | Contact")
    end
  end


  
end

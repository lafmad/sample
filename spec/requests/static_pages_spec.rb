require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
    before {visit root_path}
    it "should have the h1 'Sample App'" do
    	page.should have_selector('h1',text: 'Sample App')
    end

    it "should have the base title" do
      page.should have_selector('title',:text => "Sample")
    end

    it "should have a coustom title" do
      page.should have_selector('title',:text=> '| Home')
    end
  end

  describe "Help page" do
  	it "should have the content 'Help'" do
  		visit help_path
  		page.should have_content('Help')
  	end
    it "should have the right title" do
      visit help_path
      page.should have_selector('title',:text => "Sample | Help")
    end
  end

  describe "About page" do
    it "should have the content 'About me'" do
      visit about_path
      page.should have_content('About me')
    end
    it "should have the right title" do
      visit about_path
      page.should have_selector('title',:text => "Sample | About")
    end
  end

  describe "Contact page" do
    it "should have the content 'Contact'" do
      visit contact_path
      page.should have_content('Contact')
    end
    it "should have the right title" do
      visit contact_path
      page.should have_selector('title',:text => "Sample | Contact")
    end
  end
end

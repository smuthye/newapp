require 'rails_helper'

RSpec.describe "StaticPages", :type => :request do
  describe "Home Page" do

  	it "should have the content 'Home Page' " do
  		visit '/static_pages/home'
  		expect(page).to have_content('Home Page')
  	end

    it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title('New App')
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help Page" do

    it "should have the content 'Help Page' " do
      visit '/static_pages/help'
      expect(page).to have_content('Help Page')
    end
    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title('New App | Help')
    end
  end

  describe "About Page" do

    it "should have the content 'About Page' " do
      visit '/static_pages/about'
      expect(page).to have_content('About Page')
    end
    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title('New App | About')
    end
  end




end

require 'spec_helper'

describe "Site pages" do

  let(:base_title) { "Gym Buddy App" }	

  describe "Home page" do	

    it "should have the content 'Gym Buddy App'" do
      visit '/site/home'
      expect(page).to have_content('Gym Buddy App')
    end
  
  	it "should have the title 'Home'" do
      visit '/site/home'
      expect(page).to have_title("#{base_title} | Home")
    end
  end

describe "Contact page" do

    it "should have the content 'Contact'" do
      visit '/site/contact'
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      visit '/site/contact'
      expect(page).to have_title("#{base_title} | Contact")
    end
  end

describe "About page" do

    it "should have the content 'About'" do
      visit '/site/about'
      expect(page).to have_content('About')
    end
   
    it "should have the title 'About'" do
      visit '/site/about'
      expect(page).to have_title("#{base_title} | About")
    end
  end
end

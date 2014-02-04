require 'spec_helper'

describe "Site pages" do

  let(:base_title) { "Gym Buddy App" }	

  subject { page }

  describe "Home page" do	
    before { visit root_path }

    it { should have_content('Gym Buddy App') }
  	it { should have_title("#{base_title} | Home") }
  end

describe "Contact page" do
  before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title("#{base_title} | Contact") }
  end

describe "About page" do
  before { visit about_path }

    it { should have_content('About') }
    it { should have_title("#{base_title} | About") }
  end
end















require 'spec_helper'

describe "Main Pages" do
  subject { page }


  describe "index" do
  	before { visit mains_path }
  	it { should have_selector('div', class: "navbar") }
  	it { should have_selector('div', class: "container-fluid") }
  
  end
end

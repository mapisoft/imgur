require 'spec_helper'

describe "A basic gallery request" do

	before do
		@gallery = $imgur.gallery
	end
		
	it "should have 20 images" do
		@gallery.size.should.equal 20
	end
	
end

describe "A more complicated gallery request" do
	
	before do
		@gallery = $imgur.gallery :sort => :latest, :count => 30
	end
	
	it "should have 30 images" do
		@gallery.size.should.equal 30
	end
	
end

require 'spec_helper'

describe Length do

	before :each do
		@length = Length.new
	end

	it "should be an instance of Length" do
		expect(@length).to be_an_instance_of Length
	end
	
	describe "#string" do
		it "returns string length" do
			expect(@length.str "abcd").to eq(4)
		end
	end

	describe "#integer" do 
		it "raise error while passing integer as a parameter" do
			expect(@length.str 10).to eq("not a string")
		end
	end

	describe "#double" do 
		it "raise error while passing double as a parameter" do
			expect(@length.str 10.01).to eq("not a string")
		end
	end

end
require 'rails_helper'

RSpec.describe Contact, type: :model do

	before :each do
		@contact = Contact.new
	end
  
  it "is valid with valid arrtributes" do
  	@contact.fullname = "something"
  	@contact.email = "something"
  	expect(@contact).to be_valid
  end

  it "is invalid without a fullname" do
  	@contact.fullname = nil
  	expect(@contact).to_not be_valid
  end

  it "is invalid without an email" do
  	@contact.email = nil
  	expect(@contact).to_not be_valid
  end


end

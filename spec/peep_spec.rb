require 'spec_helper'

describe Peep do
  context "testing the db connection" do 

  	it "DB Check" do
  		expect(Peep.count).to eq 0
  		peep = Peep.create(:peep => "Hello World")
  		expect(Peep.count).to eq 1
  		peep.destroy
  		expect(Peep.count).to eq 0
  	end

  end


end

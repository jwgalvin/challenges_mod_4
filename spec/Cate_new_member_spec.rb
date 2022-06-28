require 'rspec'
require 'pry'
require './lib/cate_new_member'
require './lib/completed/cate_new_member'

RSpec.describe " checks challenges" do
  it "see if I get the expected array" do
    string = '{}'
    check = PairedBrackets.new
    expect(check.matched_set?(string)).to eq(true)
  end
  
  
end
require 'rspec'
require 'pry'
require './lib/completed/cate_new_member'

RSpec.describe " checks challenges" do
  it "see if I get the expected array" do
    member_list = [[18, 20], [45, 2], [61, 12], [37, 6], [21, 21], [78, 9]]
    list = Croquet.new
    expect(list.open_or_senior(member_list)).to eq(true)
  end
  
  
end
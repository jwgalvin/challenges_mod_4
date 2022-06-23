require 'rspec'
require 'pry'
require './lib/target_and_payload'

RSpec.describe " checks challenges" do
  it "see if I get the expected array" do
    solution = [1, 3, 4, 5, 10]
    target = 15

    red_october = TargetPayload.new
    expect(red_october.find_target(solution, target)).to eq([5,10])
  end

end

require 'rspec'
require 'pry'
#require './lib/ruby_challenges/duplicate_encoder'
require './lib/ruby_challenges/completed/duplicate_encoder'

RSpec.describe " checks challenges" do
  it "see if I get the expected array" do
    word = "din"
   
  encode_me = DupeEncoder.new
    expect(encode_me.duplicate_encode(word)).to eq("(((")
  end
  it "see if I get the expected array" do
    word = "recede"
   
  encode_me = DupeEncoder.new
    expect(encode_me.duplicate_encode(word)).to eq("()()()")
  end
  it "see if I get the expected array" do
    word = "Success"
   
  encode_me = DupeEncoder.new
    expect(encode_me.duplicate_encode(word)).to eq(")())())")
  end
  
end
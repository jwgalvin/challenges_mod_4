require 'rspec'
require 'pry'
require './lib/ruby_challenges/completed/narcissit'

RSpec.describe " dumb stuff" do
  it "test to see how far off I am" do
    int = 153
    number = Narcissistic.new

    expect(number.is_narcissistic?(int)).to eq(true)
  end
end

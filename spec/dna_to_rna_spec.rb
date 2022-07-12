require 'rspec'
require 'pry'
require './lib/ruby_challenges/completed/dna_to_rna'

RSpec.describe " checks challenges" do
  it "converts t's to u's" do
    dna = "GCAT"
    rna = DnaRna.new

    expect(rna.dna_to_rna(dna)).to eq('GCAU')
  end
end

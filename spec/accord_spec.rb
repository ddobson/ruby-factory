# spec/accord_spec.rb
require 'stringio'
require_relative '../lib/accord'

describe Accord do
  let(:accord) do
    Accord.new('black', 20_000)
  end

  context('when initialized') do
    it('should create an Accord') do
      expect(accord.class).to eq(Accord)
    end

    it('should have the correct attributes') do
      expect(accord.color).to eq('black')
      expect(accord.price).to eq(20_000)
    end
  end

  describe('#drive') do
    before do
      $stdout = StringIO.new
    end

    after(:all) do
      $stdout = STDOUT
    end

    it('should print the correct output') do
      accord.drive
      expect($stdout.string).to match(/You\'re driving an Accord!/)
    end
  end
end

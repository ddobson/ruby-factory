# spec/accord_spec.rb
require 'stringio'
require_relative '../lib/civic'

describe Civic do
  let(:civic) do
    Civic.new('black', 16_000)
  end

  context('when initialized') do
    it('should create a Civic') do
      expect(civic.class).to eq(Civic)
    end

    it('should have the correct attributes') do
      expect(civic.color).to eq('black')
      expect(civic.price).to eq(16_000)
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
      civic.drive
      expect($stdout.string).to match(/You\'re driving a Civic!/)
    end
  end
end

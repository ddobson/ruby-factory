require_relative '../lib/honda_factory'

describe HondaFactory do
  let(:honda_factory) do
    HondaFactory.new
  end

  describe('#make car') do
    context('when given an Accord') do
      it('makes an Accord') do
        accord = honda_factory.make_car('Accord', 'black', 20_000)
        expect(accord.class).to eq(Accord)
      end
    end

    context('when given a Civic')
    it('makes a Civic') do
      civic = honda_factory.make_car('Civic', 'black', 20_000)
      expect(civic.class).to eq(Civic)
    end
  end
end

require './spec/spec_helper'

describe 'lib/main' do
  describe 'change_letter' do
    it 'returns a string' do
      expect(change_letter('a', 2).class).to eq(String)
    end

    describe 'when letter is a' do
      describe 'when shift is 3' do
        it 'returns d' do
          expect(change_letter('a', 3)).to eq('d')
        end
      end

      describe 'when shift is -3' do
        it 'returns x' do
          expect(change_letter('a', -3)).to eq('x')
        end
      end
    end
  end

  describe 'caesar_cipher' do
    describe 'when string is "ABC" and shift 3' do
      it 'returns "DEF"' do
        expect(caesar_cipher('ABC', 3)).to eq('DEF')
      end
    end

    describe 'when string is "aBc" and shift 3' do
      it 'returns "dEf"' do
        expect(caesar_cipher('aBc', 3)).to eq('dEf')
      end
    end

    describe 'when string is ",!"@456 3 ? ¿+ *" and shift 5' do
      it 'returns ",!"@456 3 ? ¿+ *"' do
        expect(caesar_cipher(',!"@456 3 ? ¿+ *', 5)).to eq(',!"@456 3 ? ¿+ *')
      end
    end

    describe 'when string is "What a string!" and shift 5' do
      it 'returns "Bmfy f xywnsl!"' do
        expect(caesar_cipher('What a string!', 5)).to eq('Bmfy f xywnsl!')
      end
    end
  end
end

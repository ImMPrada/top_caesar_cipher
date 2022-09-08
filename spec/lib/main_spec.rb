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
end

# puts caesar_cipher('What a string!', 5) ====> Bmfy f xywnsl!

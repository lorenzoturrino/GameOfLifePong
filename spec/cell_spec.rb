require 'cell'
describe Cell do
  subject(:test_cell) {described_class.new}

  describe '#alive' do
    it 'has a default dead status' do
      expect(test_cell.alive).to be false
    end
  end

end

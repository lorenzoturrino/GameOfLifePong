require 'cell'
describe Cell do
  subject(:test_cell) {described_class.new}

  describe '#alive' do
    it 'has a default dead status' do
      expect(test_cell.alive).to be false
    end
  end

  describe '#friends' do
    it 'returns an array of close cells' do
      expect(test_cell.alive[0].class).to_eq test_cell.class
    end
  end

end

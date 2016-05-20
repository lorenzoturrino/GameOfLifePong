require 'cell'
describe Cell do
  subject(:test_cell) {described_class.new}
  let(:dummy_friends) {Array.new(8) {described_class.new}}

  describe '#alive' do
    it 'has a default dead status' do
      expect(test_cell.alive).to be false
    end
  end

  describe '#friends' do
    it 'returns an array of close cells' do
      expect(test_cell.friends[0].class).to_eq test_cell.class
    end
  end

  describe '#set_friends' do
    it 'accepts an array of close cells and save it to friends' do
      test_cell.set_friends(dummy_friends)
      expect(test_cell.friends).to eq dummy_friends
    end
  end

end

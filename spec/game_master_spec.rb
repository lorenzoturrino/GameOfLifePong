describe GameMaster do
  subject(:test_game_master) {described_class.new 10, 10, dummy_cell_class}
  let(:dummy_cell) {double :cell}
  let(:dummy_cell_class) {double :cell_class, new: dummy_cell}

  describe '#grid' do
    it 'is a grid of the size specified at creation. yes sucky test too bad for you' do
      expect(test_game_master.grid.size).to eq 10
      expect(test_game_master.grid[0].size).to eq 10
    end
  end

  describe '#populate' do
    it 'fills the grid with new instances of cell' do
      test_game_master.populate
      expect(test_game_master.grid[0][0].class).to eq dummy_cell_class
    end
  end

end

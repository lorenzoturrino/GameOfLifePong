describe GameMaster do
  subject(:test_game_master) {described_class.new 10, 10}

  describe '#grid' do
    it 'is a grid of the size specified at creation. yes sucky test too bad for you' do
      expect(test_game_master.grid.size).to eq 10
      expect(test_game_master.grid[0].size).to eq 10
    end
  end

end

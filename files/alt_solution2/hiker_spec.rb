require_relative 'coverage'
require_relative 'grid'

describe "Grid" do
  it "sets the rows and columns to the same dimension" do
    grid = Grid.new(5)
    expect(grid.rows_and_columns).to eq(5)
  end 

  it "sets all of the cells to dead if no details are given" do
    grid = Grid.new(2)
    expect(grid.get_status(0)).to eq(:dead)
    expect(grid.get_status(1)).to eq(:dead)
    expect(grid.get_status(2)).to eq(:dead)
    expect(grid.get_status(3)).to eq(:dead)
  end
  
  
  describe "evolve" do
    it "evolves an empty grid into another empty grid" do
      grid = Grid.new(2)
      
      grid.evolve()

      expect(grid.get_status(0)).to eq(:dead)
      expect(grid.get_status(1)).to eq(:dead)
      expect(grid.get_status(2)).to eq(:dead)
      expect(grid.get_status(3)).to eq(:dead)
    end
  end
  
  it "evolves an square pattern into a square pattern" do
    grid = Grid.new(4, [5,6,9,10])
    
    grid.evolve()
    
    expect(grid.get_status(5)).to eq(:alive)
    expect(grid.get_status(6)).to eq(:alive)
    expect(grid.get_status(9)).to eq(:alive)
    expect(grid.get_status(10)).to eq(:alive)
  end
  
   it "evolves a square pattern missing one cell into a full square pattern" do
    grid = Grid.new(4, [5,6,9])
    
    grid.evolve()
    
    expect(grid.get_status(5)).to eq(:alive)
    expect(grid.get_status(6)).to eq(:alive)
    expect(grid.get_status(9)).to eq(:alive)
    expect(grid.get_status(10)).to eq(:alive)
  end
  
   it "evolves a square pattern missing one cell and shifted into a full square pattern" do
    grid = Grid.new(4, [4,5,8])
    
    grid.evolve()
    
    expect(grid.get_status(4)).to eq(:alive)
    expect(grid.get_status(5)).to eq(:alive)
    expect(grid.get_status(8)).to eq(:alive)
    expect(grid.get_status(9)).to eq(:alive)
  end
end


describe "get_status" do
  it "initializes alive cells in the grid" do
    grid = Grid.new(2, [0, 3])
    expect(grid.get_status(0)).to eq(:alive)
    expect(grid.get_status(1)).to eq(:dead)
    expect(grid.get_status(2)).to eq(:dead)
    expect(grid.get_status(3)).to eq(:alive)
  end 
end
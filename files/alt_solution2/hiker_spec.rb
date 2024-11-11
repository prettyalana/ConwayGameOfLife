require_relative 'coverage'
require_relative 'grid'

describe "Grid" do
 it "displays a grid with an equal dimensions" do
   grid = Grid.new(3)
   expect(grid.size).to eq(3)
 end 
  
  it "creates a grid from arrays" do
    grid = Grid.new(3)
    grid.create_grid()
    puts grid.grid[0][0]
    expect(grid.grid[0][0]).to eq(false)
  end  
end

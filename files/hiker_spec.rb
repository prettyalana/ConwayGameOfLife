require_relative 'coverage'
require_relative 'grid'


describe "Grid" do
  it "sets the width and height to the same value" do 
    grid = Grid.new(rows_and_columns: 5)
    expect(grid.rows_and_columns).to eq(5)
  end 
  
end 



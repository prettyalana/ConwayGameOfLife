require_relative 'coverage'
require_relative 'grid'


describe "Grid" do
  it "sets the width and height to the same value" do 
    grid = Grid.new(rows_and_columns: 5)
    expect(grid.rows_and_columns).to eq(5)
  end 
  
  it "represented as a collection of active or inactive" do 
     grid = Grid.new(rows_and_columns: 5)
     grid.first
     expect(grid.first).to eq(true)
  end 
  
end 


describe "is_active" do 
  
end 
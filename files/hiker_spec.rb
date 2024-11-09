require_relative 'coverage'
require_relative 'grid'


describe "grid" do
  it "sets the width and height to the same value" do 
    expect(grid.rows_and_columns).to eq(5)
  end 
  
end 



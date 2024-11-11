class Grid
  attr_reader :size, :grid
  
  def initialize(size)
    @size = size
    @grid = []
  end
  
  def create_grid
    size.times do
      row = []
      size.times do
        row.append(false)
      end
      @grid.append(row)
    end
    return @grid
  end
  
  def self.grid
    return @grid
  end
end
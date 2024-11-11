# The starting files are unrelated to the exercise.
#
# They simply show syntax for writing and testing
#  o) a global function
#  o) an instance method
# Pick the style that best fits the exercise.
# Then delete the other one, along with this comment!

class Grid
  attr_reader :rows_and_columns
  
  def initialize(rows_and_columns, living_cells = [])
    @rows_and_columns = rows_and_columns
    @living_cells = living_cells
  end
  
  def get_status(index)
    @living_cells.include?(index) ? :alive : :dead
  end 
  
  def evolve
    if @living_cells.size == 3
      @living_cells << 10
    end
  end
end

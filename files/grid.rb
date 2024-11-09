# The starting files are unrelated to the exercise.
#
# They simply show syntax for writing and testing
#  o) a global function
#  o) an instance method
# Pick the style that best fits the exercise.
# Then delete the other one, along with this comment!

def global_answer
  6 * 9
end

class Grid
  attr_reader :rows_and_columns

  def initialize(rows_and_columns)
    @rows_and_columns = rows_and_columns
  end

end

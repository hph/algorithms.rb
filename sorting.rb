class Array
  def quicksort
    return self if self.size <= 1
    pivot = self.shift
    lesser, greater = self.partition { |n| n < pivot }
    lesser.quicksort + [pivot] + greater.quicksort
  end
end

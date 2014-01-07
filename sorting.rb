class Array
  def quicksort
    return self if self.size <= 1
    pivot = self.shift
    left, right = self.partition { |n| n < pivot }
    left.quicksort + [pivot] + right.quicksort
  end

  def quicksort!
    self.replace(self.quicksort)
  end

  def insertion_sort
    self.dup.insertion_sort!
  end

  def insertion_sort!
    self.each_index do |i|
      j = i
      while j > 0 && self[j - 1] > self[j]
        self[j - 1], self[j] = self[j], self[j - 1]
        j -= 1
      end
    end
  end
end

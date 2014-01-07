module Enumerable
  def quicksort
    return self if size <= 1
    ary = dup
    pivot = ary.shift
    left, right = ary.partition { |n| n < pivot }
    left.quicksort + [pivot] + right.quicksort
  end

  def quicksort!
    replace(quicksort)
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

  def merge_sort
    return self if self.size <= 1
    m = self.size / 2
    merge(self[0...m].merge_sort, self[m..-1].merge_sort)
  end

  def merge_sort!
    self.replace(self.merge_sort)
  end

  def merge(left, right)
    ary = []
    until left.empty? || right.empty?
      if left.first <= right.first
        ary << left.shift
      else
        ary << right.shift
      end
    end
    ary + left + right
  end

  private :merge

  def bogosort
    self.dup.bogosort!
  end

  def bogosort!
    self.shuffle! until each_cons(2).all? { |a, b| a <= b }
    self
  end
end

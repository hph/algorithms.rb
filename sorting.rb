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
    dup.insertion_sort!
  end

  def insertion_sort!
    each_index do |i|
      j = i
      while j > 0 && self[j - 1] > self[j]
        self[j - 1], self[j] = self[j], self[j - 1]
        j -= 1
      end
    end
  end

  def merge_sort
    return self if size <= 1
    m = size / 2
    merge(self[0...m].merge_sort, self[m..-1].merge_sort)
  end

  def merge_sort!
    replace(merge_sort)
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
    dup.bogosort!
  end

  def bogosort!
    shuffle! until sorted?
    self
  end

  def bubble_sort
    dup.bubble_sort!
  end

  def bubble_sort!
    each_index do |i|
      (1...size - i).each do |j|
        self[j], self[j - 1] = self[j - 1], self[j] if self[j] < self[j - 1]
      end
    end
  end

  def permutation_sort
    permutation.select(&:sorted?).first
  end

  def permutation_sort!
    replace(permutation_sort)
  end

  def sorted?
    each_cons(2).all? { |a, b| a <= b }
  end
end

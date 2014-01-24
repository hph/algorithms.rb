require_relative '../sorting'

describe Enumerable do
  before :each do
    @ary = (0..5).map { rand(-10..10) }
    @sorted = @ary.sort
  end

  it '#quicksort should return a sorted array' do
    @ary.quicksort.should == @sorted
  end

  it '#quicksort! should sort an array' do
    @ary.quicksort!.should == @sorted
    @ary.should == @sorted
  end

  it '#insertion_sort should return a sorted array' do
    @ary.insertion_sort.should == @sorted
  end

  it '#insertion_sort! should sort an array' do
    @ary.insertion_sort!.should == @sorted
    @ary.should == @sorted
  end

  it '#merge_sort should return a sorted array' do
    @ary.merge_sort.should == @sorted
  end

  it '#merge_sort! should sort an array' do
    @ary.merge_sort!.should == @sorted
    @ary.should == @sorted
  end

  it '#bogosort should return a sorted array' do
    @ary.bogosort.should == @sorted
  end

  it '#bogosort! should sort an array' do
    @ary.bogosort!.should == @sorted
    @ary.should == @sorted
  end

  it '#bubble_sort should return a sorted array' do
    @ary.bubble_sort.should == @sorted
  end

  it '#bubble_sort! should sort an array' do
    @ary.bubble_sort!.should == @sorted
    @ary.should == @sorted
  end

  it '#permutation_sort should return a sorted array' do
    @ary.permutation_sort.should == @sorted
  end

  it '#permutation_sort! should sort an array' do
    @ary.permutation_sort!.should == @sorted
    @ary.should == @sorted
  end

  it '#sorted? should tell us whether an iterable is sorted' do
    @sorted.sorted?.should be(true)
    @sorted.reverse.sorted?.should be(false)
  end
end

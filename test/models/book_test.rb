require 'test_helper'

class BookTest < ActiveSupport::TestCase

  test "can create one" do
    assert_difference "Book.count" do
      Book.create!
    end
  end

  test "map followed by flatten" do
    Book.new.map_followed_by_flatten_demo
  end

  test "reverse followed by each" do
    Book.new.reverse_followed_by_each_demo
  end

  test "select followed by first" do
    Book.new.select_followed_by_first_demo
  end
  
  test "select followed by size" do
    Book.new.select_followed_by_size_demo
  end

  test "assert with nil" do
    x = nil
    assert_equal(nil, x)
  end

  test "select followed by empty" do
    Book.new.select_followed_by_empty_demo
  end

  test "select followed by select" do
    Book.new.select_followed_by_select_demo
  end
end

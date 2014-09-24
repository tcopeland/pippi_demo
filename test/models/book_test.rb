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
end

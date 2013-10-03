require 'test_helper'

class BookTest < ActiveSupport::TestCase

  test "can create one" do
    assert_difference "Book.count" do
      Book.create!
    end
  end

  test "select followed by first" do
    Book.new.select_followed_by_first_demo
  end
end

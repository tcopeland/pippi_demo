require 'test_helper'

class BookTest < ActiveSupport::TestCase

  test "can create one" do
    assert_difference "Book.count" do
      Book.create!
    end
  end
end

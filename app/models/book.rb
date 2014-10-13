class Book < ActiveRecord::Base

  def map_followed_by_flatten_demo
    [1,2,3].map {|x| [x,x+1] }.flatten(1)
  end

  def reverse_followed_by_each_demo
    [1,2,3].reverse.each {|x| x }
  end

end

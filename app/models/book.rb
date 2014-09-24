class Book < ActiveRecord::Base

  def map_followed_by_flatten_demo
    [1,2,3].map {|x| [x,x+1] }.flatten
  end

end

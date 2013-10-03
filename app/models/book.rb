class Book < ActiveRecord::Base

  def select_followed_by_first_demo
    [1,2,3].select {|x| x > 1 }.first
  end

end

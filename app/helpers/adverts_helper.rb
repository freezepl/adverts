module AdvertsHelper
  def category_list
    Category.find(:all, :order => "name").collect {|c| [c.name, c.id]}
  end
end

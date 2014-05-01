module MenuHelper
  def category_class(category)
    "category-#{category.id}"
  end

  def item_class(item)
    class_name = ['element']
    item.categories.each do |c|
      class_name << category_class(c)
    end
    class_name.join ' '
  end
end

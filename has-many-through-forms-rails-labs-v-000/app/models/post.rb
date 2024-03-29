class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :categories

  def categories_attributes=(attrs)
    attrs.values.each do |attr|
      @category  = Category.find_or_create_by(attr)
      self.categories << @category
    end
  end

  def unique_users
    self.users.uniq
  end

end

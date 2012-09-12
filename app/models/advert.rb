class Advert < ActiveRecord::Base
  attr_accessible :category_id, :description, :expire, :phone, :price, :title, :user_id
  belongs_to :user
  belongs_to :category
  resourcify
  rolify
end

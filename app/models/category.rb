class Category < ActiveRecord::Base
  attr_accessible :name, :parent_id
  has_many :adverts, :dependent => :destroy
  extend FriendlyId
  friendly_id :name
end

class Pin < ActiveRecord::Base
  #removed resource_type and category_id
  validates_presence_of :title, :url, :slug, :text
  validates_uniqueness_of :slug
  belongs_to :category
end
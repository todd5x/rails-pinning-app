class Pin < ActiveRecord::Base
  #removed resource_type and category_id
  validates_presence_of :title, :url, :slug, :text
  validates_uniqueness_of :slug
  belongs_to :category

  has_attached_file :image, styles: { medium: "300x300>", thumb: "60x60>" }, default_url: "http://placebear.com/300/300"
  #validates_attachment :image - this works with pins_controller_spec.rb but isn't kosher with Rails or AWS 
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  #do_not_validate_attachment_file_type :image
end
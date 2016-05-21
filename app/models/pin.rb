class Pin < ActiveRecord::Base
    validates_presence_of :title, :url, :slug, :text
    validates_uniqueness_of :slug
    has_attached_file :image, styles: { medium: "300x300", thumb: "60x60" }, default_url: "http://baconmockup.com/300/200"
    validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

    #do_not_validate_attachment_file_type :image

        belongs_to :category

end
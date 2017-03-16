class Article < ApplicationRecord
    extend FriendlyId
    friendly_id :title, use: :slugged
    
    has_attached_file :pic, styles: { large: "851x351!", medium: "330x180!", thumb: "100x100" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :pic, content_type: /\Aimage\/.*\z/
end

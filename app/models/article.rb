class Article < ApplicationRecord
    has_attached_file :pic, styles: { large: "851x351!", medium: "330x230!", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :pic, content_type: /\Aimage\/.*\z/
end

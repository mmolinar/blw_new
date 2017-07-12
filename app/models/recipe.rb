class Recipe < ApplicationRecord
    
    has_many :ingredients
    has_many :directions
    
    accepts_nested_attributes_for :ingredients, 
                                    reject_if: :all_blank, 
                                    allow_destroy: true
    accepts_nested_attributes_for :directions, 
                                    reject_if: :all_blank, 
                                    allow_destroy: true
    
    validates :title, :description, :pic, presence: true
    
    has_attached_file :pic, styles: { medium: "400x400#" }
    validates_attachment_content_type :pic, content_type: /\Aimage\/.*\z/
end
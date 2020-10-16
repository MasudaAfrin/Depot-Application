class Product < ApplicationRecord
    validates :title, :description, :image_url, presence:true
    validates :title, uniqueness: true
    validates :price, numericality: {greater_than_or_equal_to: 0.01}
    validates :image_url, allow_blank: true, format: 
            { with:    %r{\.(gif|png|jpg|jpeg)\z}i,
              message: 'Must be in GIF or PNG or JPEG or JPG format.'
            }       
end

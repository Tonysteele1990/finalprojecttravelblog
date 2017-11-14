class Post < ApplicationRecord
	has_many :comments
	belongs_to :user
	has_many :images
	

	mount_uploader :image, ImageUploader
	serialize :images


  validates :title, presence: true
  validates_processing_of :image
	validate :image_size_validation
 
	private
	  def image_size_validation
	    errors[:image] << "should be less than 500KB" if image.size > 0.5.megabytes
	  end
  

end



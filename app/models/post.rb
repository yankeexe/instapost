 class Post < ApplicationRecord
	mount_uploader :photo, PhotoUploader 
	belongs_to :user
	validates :photo, :description, :user_id, presence: true
	has_many :comments
	acts_as_votable
	
	delegate :photo, :name, to: :user, prefix: true

	def user_photo
		user.photo
	end

	def user_name
		user.name
	end
	

end


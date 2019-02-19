class News < ApplicationRecord
	# belongs_to :user
	acts_as_commontable dependent: :destroy
	validates :description, length: {maximum: 140}
end

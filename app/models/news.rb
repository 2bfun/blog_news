class News < ApplicationRecord
	# belongs_to :user
	validates :description, length: {maximum: 140}
end

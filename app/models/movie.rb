class Movie < ApplicationRecord
	validates :title, presence: true, 
	length: { minimum: 1 }
	validates :description, presence: true, length: {minimum: 10}
end

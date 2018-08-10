class Event < ApplicationRecord
	belongs_to :user
	has_many :comments, :as => :resource
end

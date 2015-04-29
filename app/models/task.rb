class Task < ActiveRecord::Base

	validates :title, :presence => true
	validates :duration, :numericality => {:only_integer => true}

	belongs_to :user
end

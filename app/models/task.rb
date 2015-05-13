class Task < ActiveRecord::Base

	validates :title, :presence => true
	validates :duration, :numericality => {:only_integer => true}
	validates :responsible_id, :presence => true

	belongs_to :user

	validate :deadline_is_posible?

	def deadline_is_posible?
		return if finish_date.blank? || start_date.blank?
		if finish_date < start_date
			errors.add(:finish_date, "cannot be before the start date")
		end
	end

end

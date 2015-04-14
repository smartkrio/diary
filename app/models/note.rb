class Note < ActiveRecord::Base
    belongs_to :user

    def self.search(first_date, second_date)
    	if first_date.present? && second_date.present?
    		where(created_at: first_date.to_date..second_date.to_date)
    	else
    		all
    	end
    end
end

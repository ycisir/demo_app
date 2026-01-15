class User < ApplicationRecord
	#validates :first_name, length: { in: 20..30 }

	def gender_string
		self.gender == 'F' ? 'Female' : 'Male'
	end
end

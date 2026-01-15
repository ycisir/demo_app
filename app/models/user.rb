class User < ApplicationRecord
	#validates :first_name, length: { in: 20..30 }
	attr_accessor :first_name, :last_name

	# get gender string
	def gender_string
		self.gender == 'F' ? 'Female' : 'Male'
	end

	# get fullname
	def fullname
		first_name + ' ' + last_name
	end

	# get first name
	def firstname
		self.name.split(/\s/).first
	end

	# get last name
	def lastname
		self.name.split(/\s/).last
	end
end

class Project
	attr_reader		:title
	attr_writer		
	attr_accessor	
	
	@@all = []

	def self.all
		@@all
	end

	def initialize(title)
		@title = title
		@@all.push(self)
	end

	def backers
		my_backings = ProjectBacker.all.select do |pb|
			pb.project == self
		end
		my_backings.map { |pb| pb.backer }
	end

	def add_backer(backer)
		new_backing = ProjectBacker.new(self, backer)
	end
end
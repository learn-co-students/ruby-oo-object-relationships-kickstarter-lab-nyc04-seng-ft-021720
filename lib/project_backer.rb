class ProjectBacker
	attr_reader		:project, :backer
	attr_writer		
	attr_accessor	

	@@all = []

	def self.all
		@@all
	end	

	def initialize(project, backer)
		@project = project
		@backer = backer
		@@all.push(self)
	end

end
class Backer
	attr_reader		:name
	attr_writer		
	attr_accessor	
	
	@@all = []

	def self.all
		@@all
	end	

	def initialize(name)
		@name = name
		@@all.push(self)
	end

	def back_project(project)
		new_backing = ProjectBacker.new(project, self)
	end

	def backed_projects
		my_backings = ProjectBacker.all.select do |pb|
			pb.backer == self
		end
		my_backings.map { |pb| pb.project }		
	end
end
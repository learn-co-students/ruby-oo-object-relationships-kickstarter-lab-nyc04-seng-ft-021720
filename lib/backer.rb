require_relative 'project_backer.rb'
require_relative 'project.rb'

class Backer
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        backedProjects = ProjectBacker.all.select{|projects| projects.backer == self}
        backedProjects.map{|backer| backer.project}
    end
end
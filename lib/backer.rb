require 'pry'

class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects_list
        ProjectBacker.all.select do |project|
            project.backer == self
        end
    end    

    def backed_projects
        self.backed_projects_list.map {|projectbacker| projectbacker.project}
    end

end
class Backer 


attr_reader :name

def initialize(name)
    @name = name 
end 


def back_project(project)
    ProjectBacker.new(project, self)

end 


def project_finder
    ProjectBacker.all.select do |projects|
        projects.backer == self 
    end 
end 

def backed_projects 

    project_finder.map do |projects|
        projects.project
    end 
    
end




end 
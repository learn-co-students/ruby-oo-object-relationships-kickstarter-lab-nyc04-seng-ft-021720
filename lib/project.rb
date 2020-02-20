class Project

attr_reader :title

def initialize(title)
    @title = title 
end 


def add_backer(backer)
    ProjectBacker.new(self, backer)
end 

def backers
    backers_finder.map do |backers|
        backers.backer
    end 
    
end 

def backers_finder
    ProjectBacker.all.select do |projects|
        projects.project == self 
    end 
end 


end 
require_relative 'project_backer.rb'
require_relative 'backer.rb'

class Project
    attr_accessor :title
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end
    
    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backed = ProjectBacker.all.select{|projects| projects.project == self}
        backed.map{|projects| projects.backer}
    end
end
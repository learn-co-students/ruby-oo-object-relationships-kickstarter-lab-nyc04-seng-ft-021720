require 'pry'

class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers_list
        ProjectBacker.all.select do |backer|
            backer.project == self
        end
    end

    def backers
        self.backers_list.map {|projectbacker| projectbacker.backer}
    end

end
require 'pry'

class ProjectBacker
  attr_reader :project, :backer

  @@all = []

  def initialize(project, backer)
    @project = project
    @backer = backer
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end



  
end

class Backer

attr_reader :name

@@all = []

def initialize(name)
    @name = name 
    @@all << self 
end 

def self.all
    @@all
end 

def back_project(project)
    ProjectBacker.new(project, self)
     end

     def backed_projects

        projectbackers = ProjectBacker.all.select do |project|
            project.backer == self
        end

projectbackers.map do |projectbacker|
    projectbacker.project
end
    end


end


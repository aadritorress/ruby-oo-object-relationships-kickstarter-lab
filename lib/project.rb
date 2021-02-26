class Project

attr_reader :title
@@all = []


def initialize(title)
    @title = title 
    @@all << self 
end 

def add_backer(backer)
    ProjectBacker.new(self, backer)
end


def self.all
    @@all
end 
 

def backers

    backers = ProjectBacker.all.select do |backer|
        backer.project == self
    end

backers.map do |projectbacker|
projectbacker.backer
end
end


end
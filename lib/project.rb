require 'pry'
class Project
    attr_accessor :title
    attr_reader :backers
    @@projects = []
    def initialize(name)
        @title = name
        @backers = []
    end

    def self.all
        @@project
    end

    def self.save
        self.all << self
    end


    def add_backer(obj)
        self.backers << obj
        obj.backed_projects << self
    end
end

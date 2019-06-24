require 'pry'
class Backer
    attr_accessor :name
    attr_reader :backed_projects
    @@backers = []
    def initialize(name)
        @name = name
        @backed_projects = []
    end

    def self.all
        @@backers
    end

    def self.save
        self.all << self
    end

    def back_project(obj)
        self.backed_projects << obj
        obj.backers << self
    end
end
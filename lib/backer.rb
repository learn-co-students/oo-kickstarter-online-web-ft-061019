class Backer
  attr_accessor :backed_projects, :name
  #@backers = Project.backers
  def initialize(name)
    @backed_projects = []
    @name = name 
  end 
  def back_project(project)
  @backed_projects << project
  # @backers << @backed_projects
  end
  
end 
class Backer
   attr_accessor :backed_projects
   attr_reader :name

   def initialize(backer_name)
      @name = backer_name
      self.backed_projects = []
   end

   def back_project(project_obj)
      self.backed_projects << project_obj
      project_obj.backers << self
   end
end
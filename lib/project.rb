class Project
   attr_accessor :backers
   attr_reader :title

   def initialize(project_title)
      @title = project_title
      self.backers = []
   end

   def add_backer(backer_obj)
      self.backers << backer_obj
      backer_obj.backed_projects << self
   end

end
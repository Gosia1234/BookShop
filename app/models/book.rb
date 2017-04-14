class Book < ActiveRecord::Base
  belongs_to :supplier
  
   def self.search(search)
    where("category LIKE ? OR  title LIKE ? OR author LIKE ?" , "%#{search}%", "%#{search}%", "%#{search}%")
  end
  
#   def self.search(search)
#     where("category LIKE ?",  "%#{search}%")
#   end
  
  
  #  def self.search(search)
  #   where("category LIKE ?", "Crime")
  # end
  
   
  
 
  
end





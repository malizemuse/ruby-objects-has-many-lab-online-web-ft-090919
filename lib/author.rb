class Author 
  
  attr_accessor :name
  
  def initialize(name) 
    @name = name
  end 
  
  def self.posts 
    Post.all.select {|post| post.author = self}
  end 
  
end 



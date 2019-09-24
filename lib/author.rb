class Author 
  
  attr_accessor :name
  
  def initialize(name) 
    @name = name
    @posts = []
  end 
  
  def self.posts 
    Post.all.select {|post| post.author = self}
  end 
  
  def add_post(post)
    post.author = self
    @posts << post
  end 
  
end 



ActionController::Routing::Routes.draw do |map|
	map.post_list 'post_list', :controller => 'blog_posts', :action => 'list'
  
  map.resources :users, :only => [],  :shallow => true do |user|
    user.resources :blog_posts, :collection => {:drafts => :any}, :member => {:tag => :any}, :has_many => :blog_comments
  end
  
end

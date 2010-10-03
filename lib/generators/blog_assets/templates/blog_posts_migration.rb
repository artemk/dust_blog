class CreateBlogPosts < ActiveRecord::Migration
  def self.up
    create_table :blog_posts do |t|
			t.column :title, :string, :null => false
			t.column :body, :text
			t.column :created_at, :datetime
			t.column :updated_at, :datetime
			t.column :published, :boolean, :null => false, :default => false
			t.column :user_id, :integer
			t.column :published_at, :datetime
    end
		AdminMenuItem.create({:title =>"Blog", :controller_name => "blog_posts", :url => "/post_list"})
  end
  
  def self.down
    drop_table :blog_posts  
  end
end
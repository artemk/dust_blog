Factory.define :blog_tag do |b| 
  b.association     :blog_post, :factory => :blog_post
  b.tag     {Faker::Lorem.words(2).join('_')}
end

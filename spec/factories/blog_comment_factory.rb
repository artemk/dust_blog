Factory.define :blog_comment do |f|
  f.association     :user, :factory => :user  
  f.association     :blog_post, :factory => :blog_post
  f.name            false
  f.site_url        false
  f.email           { Faker::Internet.email }
  f.body            { Faker::Lorem.sentence }
end

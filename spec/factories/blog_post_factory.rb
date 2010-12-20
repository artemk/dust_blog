Factory.define :blog_post do |b|
  b.title { Faker::Lorem.sentence }
  b.body  { Faker::Lorem.sentence }
  b.published   false
  b.association     :user, :factory => :user
end

Factory.define :published_blog_post, :parent => :blog_post  do |b|
  b.published   true
end
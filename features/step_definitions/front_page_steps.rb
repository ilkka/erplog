Given /^I have a post$/ do
  @post = Post.create
end

Given /^my post has title "([^"]*)"$/ do |title|
  @post[:title] = title
  @post.save
end

Given /^my post has body "([^"]*)"$/ do |body|
  @post[:body] = body
  @post.save
end

Given /^my post has author with name "([^"]*)"$/ do |author|
  u = User.new(:email => 'foo@bar.com',
               :login => 'foo',
               :password => 'foobarbar',
               :password_confirmation => 'foobarbar',
               :name => author)
  u.save!
  @post[:author_id] = u.id
  @post.save
end

Given /^my post was published on "([^"]*)"$/ do |pubdate|
  @post[:published_on] = Date.parse(pubdate)
  @post.save
end

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
  @post[:author] = User.create(:name => author)
  @post.save
end

Given /^my post was published on "([^"]*)"$/ do |pubdate|
  @post[:published_on] = pubdate
  @post.save
end

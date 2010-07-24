Given /^I have a post$/ do
  @post = Post.create
end

Given /^my post has title "([^"]*)"$/ do |title|
  @post[:title] = title
  @post.save
end

Given /^my post has body "([^"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Given /^my post has author with name "([^"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Given /^my post was published on "([^"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

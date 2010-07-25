When /^I display the post$/ do
  visit "/posts/#{@post.id}"
end

Given /^I have a user named "([^"]*)"$/ do |name|
  User.create(:name => name)
end

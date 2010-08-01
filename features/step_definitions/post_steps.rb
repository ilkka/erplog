When /^I display the post$/ do
  visit "/posts/#{@post.id}"
end

Given /^I have a user named "([^"]*)"$/ do |name|
  u = User.create(:email => 'foo@bar.com',
                  :login => 'foo',
                  :password => 'foobarbar',
                  :password_confirmation => 'foobarbar')
  u.name = name
  u.save!
end

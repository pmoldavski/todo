When /^I submit a new todo item$/ do
  # Item.create!(:description => "Something random here")
  visit new_item_path
  # puts page.body
  fill_in 'Description', :with => "Something random here"
  click_button 'Create Item'
end

Then /^I can see the new item in the all list$/ do
  # Should be redirected to #index already by controller
  page.should have_content("Something random here")
  # expect(Item.where(:description => "Something random here")).to have(1).item
end

Given /^a todo item exists$/ do
  visit new_item_path
  # puts page.body
  fill_in 'Description', :with => "Something random here yo!"
  click_button 'Create Item'
end

When /^I delete a todo item$/ do
  visit items_path
  click_link 'delete'
end

Then /^I can no longer see that item in the all list$/ do
  page.should_not have_content("Something random here yo!")
end
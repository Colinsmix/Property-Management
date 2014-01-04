require 'spec_helper'

feature 'An owner gets created', %q(
As a real estate associate
I want to record a building owner
So that I can keep track of our relationships with owners) do
# Acceptance Tests
# I must specify a first name, last name, and email address
# I can optionally specify a company name
# If I do not specify the required information, I am presented with errors
# If I specify the required information, the owner is recorded and I am redirected to enter another new owner 

  scenario 'Owner gets created with correction information' do
    visit root_path
    click_link 'Add Owner'
    fill_in 'First name', :with => 'John'
    fill_in 'Last name', :with => 'Doe'
    fill_in 'Email', :with => 'example@example.com'
    fill_in 'Company', :with => 'Example Company'
    click_button 'Create Owner'

    expect(page).to have_content('Owner Successfully Created')
    expect(page).to have_link('Add Owner')
  end 

  scenario 'Owner gets filled out with invalid information' do
    visit root_path
    click_link 'Add Owner'
    click_button 'Create Owner'

    expect(page).to have_content("can't be blank")
    expect(page).to have_button('Create Owner')
  end
end
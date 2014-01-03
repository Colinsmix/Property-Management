require 'spec_helper'

feature 'A building gets recorded', %q(
As a real estate associate
I want to record a building
So that I can refer back to pertinent information) do
# Acceptance Tests
# I must specify a street address, city, state, and postal code
# Only US states can be specified
# I can optionally specify a description of the building
# If I enter all of the required information in the required format, the building is recorded.
# If I do not specify all of the required information in the required formats, the building is not recorded and I am presented with errors
# Upon successfully creating a building, I am redirected so that I can record another building.

  scenario 'Associate enters building information correctly' do
    visit root_path
    click_link 'Add Building'
    fill_in 'Street address', :with => 'Example Address'
    fill_in 'City', :with => 'Examplecity'
    fill_in 'State', :with => 'St'
    fill_in 'Postal code', :with => 12345
    fill_in 'Description', :with => 'Example Description'
    click_button 'Create Building'

    expect(page).to have_content('Building Successfully Created')
    expect(page).to have_button('Create Building')
  end

  scenario 'Associate enters building information incorrectly' do
    visit root_path
    click_link 'Add Building'
    click_button 'Create Building'

    expect(page).to have_content("can't be blank")
    expect(page).to have_button('Create Building')
  end


end
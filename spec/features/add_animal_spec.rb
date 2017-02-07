require 'rails_helper'

describe 'the add an animal process' do
  it "adds a new animal" do
    visit animals_path
    click_link 'New Animal'
    fill_in 'Name', :with => 'Monkey'
    click_on 'Create Animal'
    expect(page).to have_content 'Monkey'
  end

  it "gives error when no name is entered" do
    visit new_animal_path
    click_on "Create Animal"
    expect(page).to have_content('errors')
  end
end

require 'spec_helper'

feature 'Attack opponent' do
  scenario 'attack player two' do
    sign_in_and_play
    click_button 'Hug'
    expect(page).to have_content('Shane has hugged Anne')
  end
  scenario 'Show player two hit points after attack' do
    sign_in_and_play
    click_button 'Hug'
    click_link 'OK'
    expect(page).not_to have_content('Anne: 0/100 HP')
    expect(page).to have_content('Anne: 10 /100 HP')
  end
end

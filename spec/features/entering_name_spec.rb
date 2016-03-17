feature 'Entering names' do
  scenario 'Entering player names' do
    sign_in_and_play
    expect(page).to have_content('Shane vs. Anne')
  end
end

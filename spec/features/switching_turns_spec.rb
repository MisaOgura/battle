feature "Switching turns" do

  scenario "Swtich player after each hug" do
    sign_in_and_play
    click_button 'Hug'
    click_link 'OK'
    expect(page).to have_content "Anne's turn!"
  end
end

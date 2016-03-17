feature "Play page" do

  before(:each) do
    sign_in_and_play
  end

  scenario "Display players names" do
    expect(page).to have_content "Shane vs. Anne"
  end

  scenario "Display player1's HP" do
    expect(page).to have_content "Shane: 0/100 HP"
  end

  scenario "Display player2's HP" do
    expect(page).to have_content "Anne: 0/100 HP"
  end

  scenario "Display the turn" do
    expect(page).to have_content "Shane's turn!"
  end
end

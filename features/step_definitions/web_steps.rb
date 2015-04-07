Given(/^I am joining the game$/) do
  in_browser(:chrome) do
    visit '/'
    fill_in 'player_name', with: 'Mihai'
    click_on 'Register'
  end
end

Given(/^Someone else joins the same game$/) do
  in_browser(:safari) do
    visit '/'
    fill_in 'player_name', with: 'Roi'
    click_on 'Register'
  end
end

Then(/^We should see different things :\)$/) do
  in_browser(:chrome) do
    expect(page).to have_content 'Mihai'
  end

  in_browser(:safari) do
    expect(page).to have_content 'Roi'
  end
end

def in_browser(name)
  old_session           = Capybara.session_name
  Capybara.session_name = name
  yield
  Capybara.session_name = old_session
end

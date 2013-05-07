include ApplicationHelper

def sign_in(user)
	visit signin_path
	fill_in "Email",    with: user.email
	fill_in "Password", with: user.password
	click_button "Sign in"
	# When not using Capybara (because we're issuing a HTTP request directly,
	# for example), we need to set the remember token manually
	cookies[:remember_token] = user.remember_token
end
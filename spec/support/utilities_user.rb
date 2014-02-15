include ApplicationHelper

def update_user(new_name, new_email, user)
  fill_in "Name", with: new_name
  fill_in "Email", with: new_email
  fill_in "Password", with: user.password
  fill_in "Confirm Password", with: user.password
end

RSpec::Matchers.define :have_success_message do |message|
  match do |page|
    page.should have_selector('div.alert.alert-success', text: message)
  end
end

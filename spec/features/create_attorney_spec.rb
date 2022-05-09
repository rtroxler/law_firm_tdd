require 'rails_helper'

RSpec.describe 'Create Attorney' do
  before do
    sign_in create(:user)
  end

  it 'creates an attorney' do
    visit root_path
    expect(page).to have_content('About Us')
    click_on 'Attorney List'

    expect(response).not_to have_http_status(:redirect)
    within '#attorney-form' do
      fill_in 'First name', with: 'John'
      fill_in 'Last name', with: 'Doe'

      click_on 'Add Attorney'
    end

    expect(page).to have_content('John Doe')
  end
end

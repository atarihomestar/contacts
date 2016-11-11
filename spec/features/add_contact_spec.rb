require 'rails_helper'

describe 'Add a contact' do
  it 'adds a contact' do
    visit('/')
    click_link('Add Contact')

    fill_in('Name', with: 'Tester McTestleberry')
    fill_in('Email', with: 'test@sample.com')
    fill_in('contact[phone_number]', with: '801-333-9876')
    fill_in('Address', with: '202 N. Maple Way, Madison, WI')
    click_button('Create Contact')

    expect(page).to have_content('Contact created successfully!')
    expect(page.current_path).to eq(contacts_path)
  end
end

require 'rails_helper'


describe 'List all contacts' do
  before do
    @contact = Contact.create(name: 'Contact One', email: 'contact_one@gmail.com', phone_number: '123-456-7890', address: '123 Palm Street, Bacon, GA')
  end

  it 'lists the contacts' do
    visit('/')

    expect(page).to have_content('Contacts')
    expect(page).to have_content('Contact One')
    expect(page).to have_content('contact_one@gmail.com')
    expect(page).to have_content('123-456-7890')
    expect(page).to have_content('123 Palm Street, Bacon, GA')
  end
end

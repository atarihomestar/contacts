class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
    if @contact = Contact.create(contact_params)
      flash[:success] = "Contact created successfully!"
      redirect_to contacts_path
    end
  end


  private

  def contact_params
    params.require(:contact).permit(:name, :email, :address, :phone_number)
  end

end

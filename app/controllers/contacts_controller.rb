class ContactsController < ApplicationController
  def show_contacts
    contact = Contact.find_by(id: 1)
    render json:{
      id: contact.id,
      first_name: contact.first_name,
      last_name: contact.last_name,
      email: contact.email,
      phone_number: contact.phone_number,
    }
  end
  def show_contacts
    @contact = Contact.first
    render template: "contacts/show"
  end
end

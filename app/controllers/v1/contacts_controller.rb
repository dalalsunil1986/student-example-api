class V1::ContactsController < ApplicationController
  def index
    contacts = Contact.all.page(page_no).per(per_page)
    render json: {
      per: per_page,
      page: page_no,
      total_pages: contacts.total_pages,
      has_more: !contacts.last_page?,
      contacts: contacts,
    }
  end

  private

  def per_page
    params[:per] || 10
  end

  def page_no
    params[:page] || 1
  end
end
class CustomerController < ApplicationController
  def index
    @customers = Customer.all
  end


  def alphabetized
    @customers = Customer.order("LOWER(full_name)")
  end

  def missing_email
    @customers = Customer.where(email_address: [nil, ""])
  end
end
# i had .order(:full_name)

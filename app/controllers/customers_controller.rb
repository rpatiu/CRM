class CustomersController < ApplicationController

  def index
    @customers = Customer.all
  end

  def alphabetized
    @customers = Customer.all.order("name ASC")
  end

  def missing_email
    @customers_missing = Customer.all.where("email = ''")
  end
end

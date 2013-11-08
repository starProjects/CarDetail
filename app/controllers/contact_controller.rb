class ContactController < ApplicationController

  def index
    @contact = Contact.new
    respond_to do |format|
      format.html
    end
  end

  def create
    @contact = Contact.new(params[:contact])

    respond_to do |format|
      if @contact.valid? 
        UserMailer.contact_form(@contact).deliver
        format.html { redirect_to action: "index", notice: "Message sent" }
      else
        format.html { render action: "index" }
      end 
    end
  end
  
end
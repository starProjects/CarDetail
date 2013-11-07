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
        format.html do
          redirect_to contact_index_path, notice: "Message sent"
        end
      else
        format.html { render action: "index" }
      end 
    end
  end
  
end
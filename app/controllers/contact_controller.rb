class ContactController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    respond_to do |format|
      if @contact.save
        format.html { redirect_to social_path, notice: 'Message sent successfully!' }
      else
        format.html { render action: 'new' }
      end
    end
  end
end

class Contact < ActiveRecord::Base
  attr_accessible :message, :name, :email, :subject, :message_id, :created_at
end

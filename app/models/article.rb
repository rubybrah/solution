class Article < ActiveRecord::Base
  attr_accessible :name, :content, :tag_list, :created_at
  acts_as_taggable
end

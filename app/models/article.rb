class Article < ActiveRecord::Base
  attr_accessible :name, :content, :tag_list
  acts_as_taggable
end

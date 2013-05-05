class StaticPage < ActiveRecord::Base
  attr_accessible :tag_list
  acts_as_taggable
end

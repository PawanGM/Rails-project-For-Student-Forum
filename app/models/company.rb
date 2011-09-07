class Company < ActiveRecord::Base
attr_accessible :c_name, :link
has_many 	:questions
validates :c_name, :presence => true
validates :link, :presence => true

end

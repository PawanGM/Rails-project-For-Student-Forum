class DomainWiseQue < ActiveRecord::Base
attr_accessible  :domain_name

validates :domain_name, :presence => true
belongs_to :questions
end

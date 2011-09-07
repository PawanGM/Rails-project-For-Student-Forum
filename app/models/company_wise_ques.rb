class CompanyWiseQues < ActiveRecord::Base
belongs_to	:company
belongs_to	:questions
end

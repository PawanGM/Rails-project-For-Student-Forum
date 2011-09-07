class Question < ActiveRecord::Base
attr_accessible :question_text, :option1, :option2, :option3, :option4, :option5,  :answer, :expl, :admin_rating
validates :question_text, :presence => true
validates :option1, :presence => true
validates :option2, :presence => true
validates :option3, :presence => true

validates :answer, :presence => true


validates :admin_rating, :presence => true
validates :expl, :presence => true
end

class CreateCompanyWiseQues < ActiveRecord::Migration
  def change
    create_table :company_wise_ques do |t|
      t.integer :c_id
      t.integer :q_id

      t.timestamps
    end
  end
end

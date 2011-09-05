class CreateDomainWiseQues < ActiveRecord::Migration
  def change
    create_table :domain_wise_ques do |t|
      t.string :domain_name
      t.integer :q_id

      t.timestamps
    end
  end
end

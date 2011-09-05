class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.integer :c_id
      t.string :c_name
      t.string :link

      t.timestamps
    end
  end
end

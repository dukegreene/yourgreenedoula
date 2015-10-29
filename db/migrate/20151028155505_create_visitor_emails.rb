class CreateVisitorEmails < ActiveRecord::Migration
  def change
    create_table :visitor_emails do |t|
      t.text :body
      t.timestamps null: false
    end
  end
end

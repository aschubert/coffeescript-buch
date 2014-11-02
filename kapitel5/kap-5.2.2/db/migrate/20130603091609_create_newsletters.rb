class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.string :salutation
      t.string :firstname
      t.string :lastname
      t.string :birthday
      t.string :email

      t.timestamps
    end
  end
end

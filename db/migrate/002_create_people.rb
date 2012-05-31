class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :starter
      t.string :main_course
      t.string :desert

      t.timestamps
    end
  end
end

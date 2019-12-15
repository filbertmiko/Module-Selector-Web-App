class CreateCourseModules < ActiveRecord::Migration[5.2]
  def change
    create_table :course_modules do |t|
      t.string :name
      t.string :code
      t.integer :credits
      t.integer :semester
      t.references :lecturer, foreign_key: true

      t.timestamps
    end
  end
end

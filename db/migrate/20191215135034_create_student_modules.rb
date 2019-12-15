class CreateStudentModules < ActiveRecord::Migration[5.2]
  def change
    create_table :student_modules do |t|
      t.references :module, foreign_key: true
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end

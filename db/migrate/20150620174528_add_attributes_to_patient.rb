class AddAttributesToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :height, :string
    add_column :patients, :weight, :string
    add_column :patients, :bmi, :string
    add_column :patients, :body_fat, :string
    add_column :patients, :waist_circumference, :string
    add_column :patients, :history, :text
    add_column :patients, :notes, :text
  end
end

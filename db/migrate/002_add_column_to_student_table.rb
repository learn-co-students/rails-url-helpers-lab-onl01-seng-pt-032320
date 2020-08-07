class AddColumnToStudentTable < ActiveRecord::Migration
    def change
        add_column :students, :active, :boolean
        change_column_default :students, :active, from: true, to: false
    end
end
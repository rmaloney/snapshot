class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.integer :client_id
      t.string :title
      t.string :type
      t.date :contract_start
      t.date :contract_end
      t.string :frequency
      t.string :sales_rep
      t.string :developer
      t.string :ba
      t.date :start_date
      t.date :end_date
      t.date :qa_date
      t.text :changes_layouts
      t.text :changes_codes
      t.string :rework
      t.string :issue
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end

class ChangeSummaryType < ActiveRecord::Migration
  def change
    change_column :entries, :summary, :text
  end
end

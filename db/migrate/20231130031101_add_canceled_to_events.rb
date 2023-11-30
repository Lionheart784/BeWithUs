class AddCanceledToEvents < ActiveRecord::Migration[7.1]
  def change
    add_column :events, :canceled, :boolean, default: false
  end
end

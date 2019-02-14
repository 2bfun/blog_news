class ChangeDistributionOptionFromUsers < ActiveRecord::Migration[5.1]
  def change
  	change_column :users, :distribution_option, :string, :default => 'weekly'
  end
end

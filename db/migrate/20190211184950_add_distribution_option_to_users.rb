class AddDistributionOptionToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :distribution_option, :string
  end
end

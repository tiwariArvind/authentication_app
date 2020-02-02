class AddAcceptanceOfTermsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :acceptance_of_terms, :boolean
  end
end

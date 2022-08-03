class AddIntroductionToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :introduction, :string
    add_column :users, :job, :string
    add_column :users, :relationship, :string
    add_column :users, :domicile, :string
    add_column :users, :education, :string
  end
end

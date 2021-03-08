Hanami::Model.migration do
  change do
    create_table :popugs do
      primary_key :id

      column :email, String
      column :password, String

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end

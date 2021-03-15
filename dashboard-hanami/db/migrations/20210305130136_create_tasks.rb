Hanami::Model.migration do
  change do
    create_table :tasks do
      primary_key :id

      column :title, String, null: false#, index: true
      column :description, String, null: false

      column :status, String, null: false#, index: true, default: Task::OPEN_STATUS

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end

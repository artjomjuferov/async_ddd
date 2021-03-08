Hanami::Model.migration do
  change do
    alter_table :tasks do
      # add_column :popug_id, Integer, null: true

      add_foreign_key :popug_id, :popugs
    end
  end
end

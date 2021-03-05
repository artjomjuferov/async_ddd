class Task < Hanami::Entity
  OPEN_STATUS = 'open'.freeze

  attributes do
    attribute :id,          Types::Int
    attribute :title,       Types::String
    attribute :description, Types::String
    attribute :status,      Types::String
    attribute :created_at,  Types::Time
    attribute :updated_at,  Types::Time
  end
end

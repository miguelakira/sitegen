class Site < ApplicationRecord
    extend FriendlyId
    friendly_id :title, use: :slugged

    has_one :calendar
    belongs_to :user

  rails_admin do
    edit do
      field :title
      field :header
      field :body
      field :user
    end

  end
end

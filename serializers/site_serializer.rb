class SiteSerializer < ActiveModel::Serializer

  attributes :id, :title, :header, :body, :slug, :user_id, :created_at, :updated_at
end

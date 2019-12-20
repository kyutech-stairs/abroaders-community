json.extract! post_attach, :id, :post_id, :avatar, :created_at, :updated_at
json.url post_attach_url(post_attach, format: :json)

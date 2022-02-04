json.extract! attachment, :id, :name, :download_url, :attachable_id, :attachable_type, :created_at, :updated_at
json.url attachment_url(attachment, format: :json)

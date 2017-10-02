json.extract! article, :id, :category_id, :title, :body, :publish_date, :created_at, :updated_at
json.url article_url(article, format: :json)

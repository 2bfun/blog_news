json.extract! news, :id, :title, :author, :content, :description, :date, :img, :created_at, :updated_at
json.url news_url(news, format: :json)

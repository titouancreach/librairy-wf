json.array!(@books) do |book|
  json.extract! book, :id, :title, :isbn, :description, :author, :status, :thumbnail, :return
  json.url book_url(book, format: :json)
end

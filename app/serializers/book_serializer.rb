class BookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :author, :page_count, :image
end

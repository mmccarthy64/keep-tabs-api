class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content
  belongs_to :book
end

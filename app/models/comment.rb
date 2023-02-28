class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  def index
    @comments = Comments.all
  end
end

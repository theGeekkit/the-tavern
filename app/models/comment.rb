class Comment < ApplicationRecord
  belongs_to :post


  def index
    @comments = Comments.all
  end
end

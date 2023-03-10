class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


# devise :database_authenticatable, :registerable,
# :recoverable, :rememberable, :validatable,
# :confirmable, :lockable, :trackable


has_many :posts
has_many :comments


def display_name
  user_name || email
end

def self.search(query)
  Post.all.where("post LIKE ?", "%#{query}%")
end


end

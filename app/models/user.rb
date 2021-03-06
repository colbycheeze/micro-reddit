class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true,
                   length: { minimum: 3, maximum: 16}
  validates :email, presence: true, uniqueness: true,
                    length: { minimum: 3, maximum: 255}

  has_many :posts, dependent: :destroy
  has_many :comments
end

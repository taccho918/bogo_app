class Post < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  acts_as_commontable
  #post belongs to user
  belongs_to :user 

  # 降順で記事を表示
  default_scope -> { order('created_at DESC') }
  validates :user_id, presence: true
  paginates_per 10
end

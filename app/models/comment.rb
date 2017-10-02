class Comment < ActiveRecord::Base

  validates_presence_of :title #, :article_id, :user_id
  validates_numericality_of :article_id, :user_id

  belongs_to :article
  belongs_to :user

end

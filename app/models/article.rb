class Article < ActiveRecord::Base
  validates_presence_of :title, :body, :category_id, :publish_date

  validate :article_publish_date, on: :create

  validates_length_of :body, minimum: 10

  belongs_to :category
  has_many :comments

  def article_publish_date
    if !self.publish_date.nil?
      if self.publish_date < Date.today
        self.errors.add(:publish_date, "Cannot be less than todays date.")
      end
    end
  end

end

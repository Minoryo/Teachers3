class Student < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :post_number, presence: true, length:{maximum:7}

  geocoded_by :post_number
  after_validation :geocode

  def check_subject
    @subject = Array.new

  end

  def self.feed
      Student.all
 end
end

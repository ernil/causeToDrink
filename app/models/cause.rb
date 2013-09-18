class Cause < ActiveRecord::Base
  attr_accessible :approved, :author, :content, :country, :day, :month,:holiday
  
  validates :holiday, inclusion: { in: %w(Birthday Religion National Other) }
  validates :content, presence: true, uniqueness: true
  validates :day, numericality: {
    only_integer: true,
    less_than_or_equal_to: 31
  }
  validates :month, numericality: {
    only_integer: true,
    less_than_or_equal_to: 12
  }

  before_save :set_prove

  def set_prove
		self.approved = false if approved.nil?
    true
  end

  def self.find_random
    causes = Cause.where('(day = ? AND month = ?) OR (day IS ?)', Time.now.day, Time.now.month, nil)
    causes.offset(rand(causes.count)).first
  end

end

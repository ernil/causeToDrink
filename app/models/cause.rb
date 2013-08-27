class Cause < ActiveRecord::Base
  attr_accessible :approved, :author, :content, :country, :day, :month,:holiday
  
  
  #validates :holiday, inclusion: { in: %w(Birthday Religion National Other) }
  #validates :content, presence: true, uniqueness: true
  #validates :approved, inclusion: { in: [true, false]}

  #before_validation :set_prove

  #protected
  # def set_prove
  # 	if approved.nil?
  # 		self.approved = false
  # 	end
  # end=end

  def self.find_random
    causes = Cause.where('(day = ? AND month = ?) OR (day IS ?)', Time.now.day, Time.now.month, nil)
    causes.offset(rand(causes.count)).first
  end

end

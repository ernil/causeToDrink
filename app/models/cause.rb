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


end

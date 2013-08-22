namespace :db do
  namespace :data do
    desc "Create user records in the development database."

    task :fake => :environment do
      require 'faker'

      @holiday = ["Religion", "Other", "Birthday", "National"]
	
      100.times do
        u = Cause.new(
	  :content => Faker::Lorem.sentences(1),
          :author => Faker::Name.first_name,
          :country => Faker::Lorem.words(1).to_s.capitalize,
          :holiday => @holiday.sample.to_s,
          :day => (rand * 31).ceil,
	  :month => (rand * 12).ceil
        )

        u.save!
      end
    end
  end
end

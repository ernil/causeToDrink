namespace :db do
  namespace :csv do
    desc "Import csv data from file into db"
    task :import => :environment do

      require 'csv'

      csv_text = File.read('/var/www/reason/holidays.csv')
      csv = CSV.parse(csv_text, :headers => true)
      csv.each do |row|
        Cause.create(row.to_hash)
      end

    end
  end
end
